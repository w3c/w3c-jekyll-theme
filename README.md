## Introduction

This Jekyll theme provides a simple way to generate pages with the [W3C style](https://design-system.w3.org/). That Jekyll theme and the W3C Design System should only be used for content served under a w3.org URI such as the [main W3C website](https://www.w3.org/).

## Installation

### Prerequisites

Before you begin, make sure you have the following installed:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Bundler](https://bundler.io/)

### Theme Installation

1. **Configure your repository to use the theme `w3c/w3c-jekyll-theme`**

  Add the following lines to your `_config.yml`:
   ```sh
    remote_theme: w3c/w3c-jekyll-theme
    plugins:
    - jekyll-remote-theme
   ```

2. **Run Jekyll**

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

```yaml
title: Your Site Title
description: A brief description of your site
baseurl: "" # the subpath of your site, e.g. /blog
```

If the pages are restricted to W3C members only, you may add the following property to display a banner:

```yaml
member_only: true
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

### Table of content

It is possible to automatically generate the table of contents on a page, using the [`jekyll-toc` plugin](https://github.com/toshimaru/jekyll-toc).
You first need to declare the dependency in the `Gemfile`
```
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
```
toc:
  max_level: 3 # edit the level depending on your needs
```

Finally, add `toc: true` to the page properties of the page you want to add the table of contents on.

## Design system components

A few components from the design system are [available](https://github.com/w3c/w3c-jekyll-theme/tree/main/_includes) with this theme.
Examples on these components can be found [here](https://w3c.github.io/w3c-jekyll-theme/components.html).

## Deployment

### GitHub Pages

1. Push your code to a new repository on GitHub.
2. Go to the repository settings.
3. Scroll down to the GitHub Pages section.
4. Select the branch you want to publish from (usually `main`).
5. Your site should be live at `https://your-username.github.io/repository-name`.
