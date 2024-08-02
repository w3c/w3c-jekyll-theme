---
title: Components
layout: basic
translations:
  - link: fr.html
    lang: fr
    label: Francais
  - link: en.html
    lang: en
    label: English
---

# Collapsible containers
[Collapsible containers component](https://design-system.w3.org/components/collapsible-containers.html)

{% assign cards = site.data.collapsible_data['collapsible_data'] %}
{% include collapsible.html cards=cards %}

# Cards

[Design system cards reference](https://design-system.w3.org/components/cards.html)

## Simple cards

[Simple card with icon](https://design-system.w3.org/components/cards.html#simple-card-with-icon)

{% include card_simple.html title="Web Design and Applications" content="The standards for building and Rendering Web pages, including HTML, CSS, SVG, Ajax, and other technologies for Web Applications (\"WebApps\"). Includes information on how to make pages accessible (WCAG), to internationalize them, and make them work on mobile devices." %}

## Cards with image

[Simple card with image](https://design-system.w3.org/components/cards.html#simple-card-with-image)

{% include card_image.html title="W3C starts web payments standards work" content="New working group launched to make payments easier and more secure." imageurl="https://design-system.w3.org/dist/assets/images/temp-developers-1520.jpg" imagealt="A Macbook screen with code" %}

## Block link cards

[Block link cards](https://design-system.w3.org/components/cards.html#block-link-cards)

{% include card_link.html url="https://www.w3.org/" title="W3C starts web payments standards work" content="New working group launched to make payments easier and more secure." imageurl="https://design-system.w3.org/dist/assets/images/temp-developers-1520.jpg" imagealt="A Macbook screen with code" %}

# Images

[Image component](https://design-system.w3.org/components/image.html)

{% include image.html src="https://www.w3.org/cms-uploads/Hero-illustrations/groups.svg" alt="Group illustration" caption="The World Wide Web Consortium (W3C) develops standards and guidelines to help everyone build a web based on the principles of accessibility, internationalization, privacy and security."%}

# Videos
[Video component](https://design-system.w3.org/components/video.html)

{% include video.html src="https://www.youtube-nocookie.com/embed/sw-j75MQtQU" caption="<p>Note: embed code from Vimeo/YouTube does not include the <code>title</code> attribute, but this is a WCAG requirement so needs to be added manually.</p>"%}

# Archived content
[Archived content component](https://design-system.w3.org/components/archived-content.html)

{% include archived_content.html content="Please use <a href=\"https://www.w3.org/\">this link</a> instead" %}

# Notes
[Notes component](https://design-system.w3.org/components/notes.html)

{% include notes_info.html title="This is an info note" content="Hello World!" %}
{% include notes_success.html title="This is a success note" content="Hello World!" %}
{% include notes_warning.html title="This is a warning note" content="Hello World!" %}
{% include notes_error.html title="This is an error note" content="Hello World!" %}

# Quote
[Quote component](https://design-system.w3.org/components/quote.html)

{% include quote.html content="The goal of the Web is to serve humanity. We build it now so that those who come to it later will be able to create things we cannot ourselves imagine." footer="Sir Tim Berners-Lee" %}

# Translations
[Translation component](https://design-system.w3.org/components/translations.html)

{% include translations.html %}
