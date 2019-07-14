# RubyGems - A simple program that use a Gem

## Gem

As most programming languages, Ruby leverages a wide set of third-party libraries. Nearly all of these libraries are released in the form of a **gem**, a packaged library or application that can be installed with a tool called [RubyGems][].

[RubyGems]: https://www.ruby-lang.org/en/libraries/

## Using a Gem

We want to create a simple demo program to show how to use a gem: a `hello_world` ruby program to print a string with colored text using the gem [colorize](https://rubygems.org/gems/colorize/versions/0.8.1).

In order to use a dependency and to let other use our library we need to bundle our code and its dependency together.
We can use [Bundler](https://bundler.io/).

## Bundler

Bundler's help command, it “manages an application’s dependencies through its entire life across many machines systematically and repeatably”. Briefly, it allows you to save/add project dependencies to a file called `Gemfile`, and install all of these dependencies with a single command.

Bundler itself is a *RubyGem* so it can be installed by running the gem install bundler.

Then, to initialize a brand new `Gemfile` for your project, in the root folder of your application issue the command:

```sh
$ bundle init
Writing new Gemfile to /Users/foronim/work/workspaces/ruby/gems-demo/Gemfile
```

Adding a dependency:

```sh
$ bundle add colorize
...
...
Fetching colorize 0.8.1
Installing colorize 0.8.1
```

Now that all of our application dependencies are bundled within the single Gemfile, when we distribute our application, the recipient simply has to run bundle install and they’ll see the following:

```sh
$ bundle install
Using bundler 2.0.2
Using colorize 0.8.1
Bundle complete! 1 Gemfile dependency, 2 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```

## The gem command

The `gem` command allows you to interact with `RubyGems`.

Ruby 1.9 and newer ships with RubyGems built-in.

## Finding Gems

The search command lets you find remote gems by name. You can use regular expression characters in your query:

```sh
$ gem search ^railsp

*** REMOTE GEMS ***

railspack (0.1.4)
railspacker (0.2.0)
railspm (0.0.1)
railspp (0.4.2)
railsprof (0.0.2)
```

If you see a gem you want more information on you can add the details option. You’ll want to do this with a small number of gems, though, as listing gems with details requires downloading more files:

```sh
$ gem search ^railspack -d

*** REMOTE GEMS ***

railspack (0.1.4)
    Author: jdmorlan
    Homepage: http://github.com/jdmorlan/railspack

    Integrate webpack into your Rails app

railspacker (0.2.0)
    Author: Alexandre Magro
    Homepage: https://github.com/alexandremagro/railspacker

    Railspacker is an alternative to Webpacker
```

## Installing Gems

The install command downloads and installs the gem and any necessary dependencies then builds documentation for the installed gems.

```sh
$ gem install drip
Fetching: rbtree-0.4.1.gem (100%)
...
2 gems installed
```

## Recap

With `Bundle` you can download and use gems locally to your project.
With `gem` you can install gems globally (like solargraph, pry-byebug, etc.).

## References

* [RubyGems 101: How to use a third-party Gem in your Ruby application - medium.com](https://medium.com/@gratefulcheddar/rubygems-101-how-to-use-a-third-party-gem-in-your-ruby-application-37249529dbc7)
* [Bundler - bundler.io](https://bundler.io/)
* [guides.rubygems.org](https://guides.rubygems.org/rubygems-basics/#listing-installed-gems)
