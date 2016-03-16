# Cheshirecat

Cheshirecat is an alternative deploy tool designed for middleman.

## Why cheshirecat, not middleman-deploy?

It is good to use middleman-deploy in a typical situation. However, middleman-deploy assumes a target git repository and source git repository are same. So we cannot separate source repository and a repository that contains build files.

Cheshirecat can deply built files to another repository by simple command `cheshirecat`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cheshirecat'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cheshirecat

## Usage

Following code is an example of usage of cheshirecat. Type like it in a directory of source repository,

```
$ (bundle exec) cheshirecat ./build 'git@github.com:mozamimy/mozamimy.github.com.git' master 'Moza USANE', 'mozamimy@quellencode.org'
```

First argument is a directory that contains built files, second argument is remote repository, third argument is a name of target branch, forth argument is your name, and fifth argument is your email address.

In result, built files in `build` directory are pushed to specified branch of also specified remote repository, and the commit's author and email address are specified one.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mozamimy/cheshirecat.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
