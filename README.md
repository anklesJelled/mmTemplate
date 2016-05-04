mmTemplate
=====

My Custom [Middleman](https://middlemanapp.com/) Project Template. This is not meant to be a generic template that anyone might use, this is setup how I want it.


My Development Environment
-----
- [Linux Mint](https://linuxmint.com/) 17.x - Operating System
- [RVM](https://rvm.io/) - install newer Ruby version
- [SASS](http://sass-lang.com/) - CSS Compiler


/Gemfile
-----
- `middleman-livereload` - [GitHub](https://github.com/middleman/middleman-livereload)
- `middleman-search_engine_sitemap` - [GitHub](https://github.com/Aupajo/middleman-search_engine_sitemap)
- `middleman-blog` (*sometimes*)
- `middleman-breadcrumbs` (*sometimes*)


/config.rb
-----
- `directory_indexes` (*Pretty URLs*)
- Change the `search_engine_sitemap` url.


Design Files
-----
Not in this repo.

- /design/design.ai
- /design/graphics/favicon.ai
- Images for `slideshow` CSS module.
- Images for `social` CSS module.


Favicons
-----
Create an SVG file from favicon.ai and using it here: [Real Favicon Generator](http://realfavicongenerator.net/). The generator creates a bunch of images and:

- /browserconfig.xml
- /manifest.json
- /safari-pinned-tab.svg

Javascript
-----
jQuery is needed to display the viewport dimensions at the bottom-right of the page. I like seeing the dimensions while I am building a site but then it gets removed for production. Therefore, the jQuery script link in layout.erb can be commented-out (removed) after development.

jQuery is required for the Back-To-Top button that appears in the bottom-right corner of the screen after scrolling down.

The navigation doesn't require jQuery.
