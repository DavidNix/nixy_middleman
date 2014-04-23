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

# TODO

Change breakpoint mixins to media - update Neat

Gemfile needs middleman-sync

Place these in config rb

require 'asset_sync'
# Fix sync errors related to dot in bucket name
Fog.credentials = { :path_style => true }

# Activate sync extension
activate :sync do |sync|
  sync.fog_provider = 'AWS' # Your storage provider
  sync.fog_directory = 'sheenaanddavid.com' # Your bucket name
  sync.fog_region = 'us-east-1' # The region your storage bucket is in (eg us-east-1, us-west-1, eu-west-1, ap-southeast-1 )
  sync.aws_access_key_id = ENV['AWS_ACCESS_KEY'] # Your Amazon S3 access key
  sync.aws_secret_access_key = ENV['AWS_SECRET_KEY'] # Your Amazon S3 access secret
  sync.existing_remote_files = 'delete' # What to do with your existing remote files? ( keep or delete )
  # sync.gzip_compression = false # Automatically replace files with their equivalent gzip compressed version
  sync.after_build = false # Disable sync to run after Middleman build ( defaults to true )
end