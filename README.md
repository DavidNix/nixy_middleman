# Nixy Middleman Template

## What is it?

A middleman template that is somewhat similar to [Amicus](https://github.com/nathos/amicus). 

The differences:

* Prefer SCSS to SASS
* Prefer Bourbon and Neat to Susy
* [Dotenv](https://github.com/bkeepers/dotenv) for simple environment variable management
* SMACCS asset directory structure
* No holder.js
* Minitest setup - run with `rake test`
* No modernizr

For full Middleman documentation, visit the [Middleman website](http://middlemanapp.com/).


## Middleman Template

Middleman now supports project templates. To use this as a template, clone this Git repository into ```~/.middleman```.

Then use the new template argument for the ```middleman init``` command:

```middleman init my_new_project --template=```

## Additional Setup

This projects assumes you use RVM.  You'll probably want to change the `.ruby-gemset` and the `.ruby-version`.

Also rename `.env.sample` to simply `.env` with your env variables.