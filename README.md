# Middleman Build Branch

[Middleman](http://middlemanapp.com) extension to push the build directory
to a build branch.

## Installation

Add this line to your Gemfile:

```ruby
gem 'middleman-build-branch'
```

You'll also need to require the gem in your Rakefile:

```ruby
require 'middleman-build-branch'
```

## Usage

Middleman Build Branch provides the following rake tasks:

```shell
rake build    # Compile all files into the build directory
rake publish  # Build and publish
```

The only assumption is that you are deploying to a build branch in the same
remote as the source. `rake publish` will create this branch for you if it
doesn't exist.

## Options

You cannot deploy your site if you have uncommitted changes. You can
override this with the `ALLOW_DIRTY` option:

```shell
bundle exec rake publish ALLOW_DIRTY=true
```

You can append a custom suffix to commit messages on the build branch:

```shell
bundle exec rake publish COMMIT_MESSAGE_SUFFIX="--skip-ci"
```

You can change the remote that you deploy to:

```shell
bundle exec rake publish REMOTE_NAME=upstream
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
