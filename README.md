## Introduction

This Jekyll theme provides a simple way to generate pages with the [W3C style](https://design-system.w3.org/). That Jekyll theme and the W3C Design System should only be used for content served under a w3.org URI such as the [main W3C website](https://www.w3.org/).

## Installation

### Prerequisites

Before you begin, make sure you have the following installed:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Bundler](https://bundler.io/)

On Ubuntu (24.04 LTS):
```shell
sudo apt install ruby-dev ruby-bundler
# Set the path to your bundler data
mkdir ~/.bundler
bundle config path ~/.bundler
```

On MacOS:
```shell
brew install chruby ruby-install
ruby-install ruby 3.2.3
# Update your bash profile to use this version of Ruby
echo "source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh" >> ~/.bash_profile
echo "source $(brew --prefix)/opt/chruby/share/chruby/auto.sh" >> ~/.bash_profile
echo "chruby ruby-3.2.3" >> ~/.bash_profile
```

### Theme Installation

1. **Specify your Jekyll dependencies (optional)**

    Create the file `Gemfile` at the root of your project. You may skip this step if you don't need the Jekyll plugins listed below but you will have to specify the `jekyll-remote-theme` plugin in your `_config.yml` file (see the [Jekyll configuration](#jekyll-configuration) section):

   ```gem
   source "https://rubygems.org"
   gem "jekyll", "~> 4.1.0"

   group :jekyll_plugins do
       gem 'jekyll-commonmark' # adds additional markup features such as dl/dt/dd, allowing custom ids, etc
       gem 'jekyll-remote-theme'
       gem 'webrick'
   end
   ```
   
    You may also add addition plugins such as [`jekyll-relative-links`](https://github.com/benbalter/jekyll-relative-links) to help convert relative links or [`jekyll-toc`](https://github.com/toshimaru/jekyll-toc) to generate a "Table of content".
 
2. **Jekyll configuration**

    Add the following lines to your `_config.yml`:

    ```yml
    remote_theme: w3c/w3c-jekyll-theme
    plugins:
    - jekyll-remote-theme # plugin only needed if you skipped the jekyll dependencies section
    ```

3. **Run Jekyll**

    If you have more ruby dependencies and rely on `bundler`, you can execute jekyll with:

    ```sh
    bundle install
    bundle exec jekyll serve
    ```

    Otherwise, you can simply run:

    ```sh
    jekyll serve
    ```

4. Open your browser and go to `http://localhost:4000` to see your new site.

## Configuration

### Site Settings

Edit the `_config.yml` file to change your site settings:

```yml
remote_theme: w3c/w3c-jekyll-theme
title: Your Site Title
description: A brief description of your site
baseurl: "" # the subpath of your site, e.g. /blog
member_only: true # if set to true, the pages will display a member-only banner
defaults:
  -
    scope:
      path: "" # an empty string here means all files in the project
    values:
      layout: "default" # by default, use the default layout from the theme
exclude: ["README.md", "**/README.md"]  # list the files that shouldn't be converted
```


### Page Settings

For each page, you need to specify their layout (`default` or `basic`) and title.

```yml
---
layout: default
title: "This is the page title"
---
```

### Navigation

You will need to specify where the website will be located and provide a list of pages that will appear in the navigation menu.

For instance, if the website is located under https://www.w3.org/jekyll/theme/, then create the following YAML file `_data/subpath.yml` to help generate the breadcrumb:

```yaml
path:
  - title: Home
    url: /
  - title: Jekyll
    url: /jekyll/
  - title: W3C Theme
    url: /theme/
```

For the navigation menu, create the YAML file `_data/navigation.yml`, e.g.:

```yaml
pages:
  - title: W3C Jekyll theme
    url: /jekyll/theme/
    html: /
  - title: About
    url: /jekyll/theme/about/
    html: /about/
  - title: Blog
    url: /jekyll/theme/blog/
    html: /blog/
  - title: Contact
    url: /jekyll/theme/contact/
    html: /contact/
```

#### Additional sub-menus

The `default` layout offers to possibility to add additional menus below the navigation. All you need to do is to add the corresponding YAML file under the `_data` directory of your project with the name `submenu-@menuid.yml` where `@menuid` is the menu identifier, e.g.:

```yaml
title: another menu
pages:
- title: foo
  url: /foo/
  html: /foo/
- title: bar
  url: https://www.example.org/
```

Then, you just need to add the following `submenu` property in your page, e.g.

```yaml
title: this is a jekyll page
submenu: [@menuid]
```

Note that `submenu` accepts multiple ids to display different menus.


### Table of content

It is possible to automatically generate the table of contents on a page, using the [`jekyll-toc` plugin](https://github.com/toshimaru/jekyll-toc).
You first need to declare the dependency in the `Gemfile`

```ruby
source "https://rubygems.org"

gem "jekyll", "~> 4.1.0"

group :jekyll_plugins do
  gem 'jekyll-remote-theme'
  gem 'jekyll-toc'
  gem 'webrick'
end
```

and install it by running `bundle install`.

Once it's done, you can enable it in the `_config.yml`:

```yaml
toc:
  max_level: 3 # edit the level depending on your needs
```

Finally, add `toc: true` to the page properties of the page you want to add the table of contents on.

## Design system components

A few components from the design system are [available](https://github.com/w3c/w3c-jekyll-theme/tree/main/_includes) with this theme.
Examples on these components can be found [here](https://w3c.github.io/w3c-jekyll-theme/components.html).

## Deployment

### GitHub Pages

There are two ways to deploy on GitHub pages depending on whether your site rely on specific Jekyll dependencies. By default, GitHub pages come with a bunch of [Jekyll plugins](https://pages.github.com/versions/). If you need other dependencies to be installed with bundler (e.g. `jekyll-toc` or `jekyll-commonmark`) you will have to use a GitHub action to generate and deploy the pages.

#### Without additional dependencies

1. Push your code to a new repository on GitHub.
1. Go to the repository settings.
1. Scroll down to the GitHub Pages section.
1. Select the branch you want to publish from (usually `main`).
1. Your site should be live at `https://your-username.github.io/repository-name`.

#### With additional dependencies

1. Push your code to a new repository on GitHub.
1. Go to the repository settings.
1. Scroll down to the GitHub Pages section.
1. Select "GitHub actions" as the source of your GitHub Pages
1. Create the following workflow in your repository, e.g. `.github/workflows/jekyll-gh-pages.yml`:
    ```yml
    name: Deploy Jekyll with GitHub Pages dependencies preinstalled

    on:
      # Runs on pushes targeting the default branch
      push:
        branches: ["main"]
    
    # Allow only one concurrent deployment, skipping runs queued between the run in-progress and latest queued.
    # However, do NOT cancel in-progress runs as we want to allow these production deployments to complete.
    concurrency:
      group: "pages"
      cancel-in-progress: false
    
    jobs:
      # Build job
      build:
        runs-on: ubuntu-latest
        steps:
          - name: Checkout
            uses: actions/checkout@v4
          - name: Setup Ruby
            uses: ruby/setup-ruby@086ffb1a2090c870a3f881cc91ea83aa4243d408 # v1.195.0
            with:
              ruby-version: '3.2.3' # Not needed with a .ruby-version file
              bundler-cache: true # runs 'bundle install' and caches installed gems automatically
          - name: Build with Jekyll
            # Outputs to the './_site' directory by default
            run: bundle exec jekyll build
            env:
              JEKYLL_ENV: production
          - name: Upload artifact
            id: github-pages
            uses: actions/upload-pages-artifact@v3
            with:
              name: github-pages
              path: _site/
    
      # Deployment job
      deploy:
        needs: build
        permissions:
          pages: write
          id-token: write
        environment:
          name: github-pages
          url: ${{ steps.deployment.outputs.page_url }}
        runs-on: ubuntu-latest
        steps:
          - name: Deploy to GitHub Pages
            id: deployment
            uses: actions/deploy-pages@v4
    ```
