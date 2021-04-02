---
title: Using This Theme
layout: post
---

If you're here, you probably want to use this theme for your technical documentation or blog. This page will provide an in-depth overview of how to set up everything you need to start writing.

## Installing Prerequisites
To start, you're going to need to install Ruby, Jekyll, and some other necessities. Jekyll already provides excellent [installation guides](https://jekyllrb.com/docs/installation/) on their website, so follow their steps before moving on.

After you're done, you need to create a new Jekyll blog. Simply open up the command line and type in `jekyll new <path>`, where `<path>` is the directory you want your blog to be stored in.

Once the command is done running, go to the location where you installed a new Jekyll blog. You should see a bunch of files there, that has a structure somewhat like the following:
~~~
_includes
_layouts
_posts
_sass
_site
.git
.jekyll-cache
.sass-cache
assets
_config.yml
.gitignore
Gemfile
Gemfile.lock
index.markdown
~~~
If so, you'll done with this step! Jekyll has installed everything you need to setup a blog, including the default theme, *Minima*.

## Viewing the Blog
To view your blog, head over to the command line once more and run `bundle exec jekyll serve`. Scroll through the output, and you should be able to see a link that looks like `http://127.0.0.1:4000/`. Copy and visit that link, and you should see something that looks like this:

![Default blog](https://raw.githubusercontent.com/jekyll/minima/master/screenshot.png)

When viewing your blog locally(for example, while you're writing a draft), you can simply run `bundle exec jekyll serve` to view your blog locally. It will typically automatically update content for you locally when you edit something.

## Switching out the Theme
Now we want to switch the theme to TechDoc. To do so, we need to edit the `Gemfile` file in your blog directory. This file is used by our blog(Bundler, a installation tool specifically) to update the dependencies.

Open it, and add the following line:
~~~
gem "techdoc-jekyll-theme"
~~~
Once you do that, you'll need the command line again. Open the command line, and run `bundle install`, which will take a look at our `Gemfile` and use it to install new dependencies.

If everything goes fine, you should now have the theme installed. Open `_config.yml`. This file is used to configure information for our blog, such as theme information, author information, and so forth. Right now, we want to change our theme, so add the following line to the file:
~~~yaml
theme: techdoc-jekyll-theme
~~~
If you're still running `bundle exec jekyll serve`, you'll need to close that by running `CTRL+C` as Jekyll doesn't regenerate your blog when you edit `_config.yml` for technical reasons. Run the command again, and navigate over to your blog. You should now see that the theme has been changed.

## Configuring Your Blog
By default, `_config.yml` looks something like the following:
~~~yaml
author: Your name
title: Blog title
description: >-
    Description for your blog
baseurl: "/"
~~~
`_config.yml` can be edited to suit your tastes, as we saw before. Edit it so that it looks something like this:
~~~yaml
author: Jianmin Chen
baseurl: "/techdoc"
github_username: jianmin-chen
library_name: TechDoc
library_link: https://github.com/jianmin-chen/techdoc
library_description: >-
    Jekyll theme for writing technical documentation
url: "https://jianmin-chen.github.io"
~~~
Some of these are self-explanatory, but others need a little bit more explanation. `baseurl` is the URL after your website URL. For example, `url` in the above example is *https://jianmin-chen.github.io* and `baseurl` is */techdoc*, so to visit the blog above someone would visit *https://jianmin-chen.github.io/techdoc*.

## Writing Posts
Now we can get to the fun part - writing posts. To do this, you can head over to the `_posts` folder inside your blog directory and create a new file, titled `year-month-day-title.markdown`. How you name your file is important because Jekyll will use it to create a link to your file, such as `http://127.0.0.1:4000/techdoc/2021/04/01/using-this-theme.html`.

Once you name it, you can open it. To start off, we need to include some information about our post, by adding a header. Typically, your header should look like this:
~~~markdown
---
title: Post title
layout: post
---
~~~
After you've set up the header, you can start writing! If you've never written in Markdown before, you can find a quick reference [here](https://kramdown.gettalong.org/quickref.html). When you save the file, take a look at your blog - a link should have been added, and you can visit it to see your content! Everything you write and visit will go in the `_posts` folder.

## Deploying to GitHub Pages
Deploying your static website to GitHub Pages is very simple. Sign up or log in to your GitHub account, and create a new repository. Depending on whether or not you added a `baseurl` variable to your `_config.yml` file, you have a couple of options for naming your repository - you can either use the `baseurl` or `<username>.github.io`.

 Once you've set up your repository, you need to get a local copy of the repository. To do so, you need to create a final directory for your blog. Afterwards, you can open the command line and type in `git clone <repository name>` to get a local copy of the repository you just created on your desktop.

After you clone it, you can copy and paste all your current blog files into the new directory. You can then update the actual repository by running the following commands:
~~~
git add --all
git commit -m "<commit message>"
git push -u origin master
~~~
Assuming there are no errors, you can visit your blog after you've done this, most likely at `https://<username>.github.io/<baseurl>`. Your blog - or documentation - is now available on the Internet!

After you've set up your blog, you'll probably want to alter it. To do so, you can just run the above commands again.
