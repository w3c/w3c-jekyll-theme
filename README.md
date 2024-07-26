## Introduction

This Jekyll theme provides a simple way to generate pages with the [W3C style](https://design-system.w3.org/).


## Installation

### Prerequisites

Before you begin, make sure you have the following installed:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Bundler](https://bundler.io/)

### Theme Installation

1. **Configure your repository to use the theme `w3c/w3c-jekyll-theme`**

  Add the following lines to your `_config.yml`:
   ```sh
    remote_theme: deniak/w3c-jekyll-theme
    plugins:
    - jekyll-remote-theme
   ```

2. **Run Jekyll**

   ```sh
   bundle exec jekyll serve
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

### Navigation

Update the navigation links in `_data/navigation.yml`:

```yaml
pages:
  - title: Home
    url: /
    html: /
  - title: About
    url: about
    html: about.html
  - title: Blog
    url: blog
    html: blog.html
  - title: Contact
    url: contact
    html: contact.html
```

## Deployment

### GitHub Pages

1. Push your code to a new repository on GitHub.
2. Go to the repository settings.
3. Scroll down to the GitHub Pages section.
4. Select the branch you want to publish from (usually `main` or `master`).
5. Your site should be live at `https://your-username.github.io/repository-name`.
