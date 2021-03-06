# TechDoc
[![Gem Version](https://badge.fury.io/rb/techdoc-jekyll-theme.svg)](https://badge.fury.io/rb/techdoc-jekyll-theme)

## About
TechDoc is a Jekyll theme designed for writing technical documentation. The templates that come with it are very minimal, so you can quickly get started writing documentation.

## Installation
Take a look at this [page](http://jianmin-chen.github.io/techdoc/2021/04/01/using-this-theme.html), which contains detailed instructions for installation.

## Usage
Once you've installed the theme using the page mentioned above, you can start writing technical documentation right away by creating a new `.markdown` file in the `/posts` folder. The file should be named `year-month-day-title.markdown`, and the beginning of the file should look something like this:
```markdown
---
title: <title>
layout: post
---
```
Once you've got that, you can start writing away! A quick reference on writing content in Markdown can be found [here](https://kramdown.gettalong.org/quickref.html).

## Contributing
Bug reports and pull requests are welcome on GitHub at [https://github.com/jianmin-chen/techdoc](https://github.com/jianmin-chen/techdoc). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development
To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `techdoc.gemspec` accordingly.

## License
The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
