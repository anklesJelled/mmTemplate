mmTemplate
=====

My Custom [Middleman](https://middlemanapp.com/) Project Template. This is not meant to be a generic template that anyone might use, this is setup how I want it.


My Development Environment
-----
- Operating System: [Linux Mint](https://linuxmint.com/)
- Ruby Control: [RVM](https://rvm.io/)
- CSS Compiler: [SASS](http://sass-lang.com/)

### Setup
Steps to setting up this development environment from a fresh install of Linux Mint 18.1

- Install [RVM](https://rvm.io/) - instructions on website.
	- Use RVM to install a version of ruby. (2.4)
- `sudo apt-get install build-essential`
- `gem update --system`
- `gem update`
- `sudo apt-get install git`
	- `git config --global user.name "Joe"`
	- `git config --global user.email "joe@example.com"`
- Git Clone this repository
- Git Clone /sites/ repository (Bitbucket)
- Install via Software Manager: Sublime Text, Meld
- `gem install bundle`
- `gem install middleman` - after this: compare the version of middleman each site is using (Gemfile) to see if there is an updated version.
- `bundle install`
- Install [Node.js](https://nodejs.org/en/download/package-manager/) - v7 worked in Linux Mint 18.1
- Customize Terminal with ~/.bashrc file.
- Setup `git prep` alias: `prep = "!sh -c clear; git status; git log -1'"
- Done!
- `bundle exec middleman` - cd to the site directory and run this. Should work now.


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
