# rbenv

## About

[rbenv](https://github.com/rbenv/rbenv) help you managing multiple different ruby versions at the same time:

- Project A uses ruby 2.3.8
- Project B uses ruby 2.1.0

Learn more about [how it works](https://github.com/rbenv/rbenv#how-it-works).

## Set up

### Homebrew on macOS

Follow these [instructions](https://github.com/rbenv/rbenv#homebrew-on-macos).

Note: seems to me that at least one time you have to run `rbenv global x.y.z` in order to have the gem env home set to a folder under the user home.

## Installing Ruby versions

As explained [here](https://github.com/rbenv/rbenv#installing-ruby-versions):

```sh
# list all available versions:
$ rbenv install -l

# install a Ruby version:
$ rbenv install 2.0.0-p247
```

## Installing Ruby gems

As explained [here](https://github.com/rbenv/rbenv#installing-ruby-gems)...

...Once you've installed some Ruby versions, you'll want to install gems. First, ensure that the target version for your project is the one you want by checking `rbenv version` (see [Command Reference](https://github.com/rbenv/rbenv#command-reference)). Select another version using rbenv local 2.0.0-p247, for example. Then, proceed to install gems as you normally would:

```sh
gem install bundler
```

**You don't need sudo to install gems**. Typically, the Ruby versions will be installed and writeable by your user. No extra privileges are required to install gems.

Check the location where gems are being installed with gem env:

```sh
$ gem env home
# => ~/.rbenv/versions/<ruby-version>/lib/ruby/gems/...
```
