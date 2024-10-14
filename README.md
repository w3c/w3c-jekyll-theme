## Introduction

This Jekyll theme provides a simple way to generate pages with the [W3C style](https://design-system.w3.org/). That theme is meant to be used by W3C-related websites.

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
