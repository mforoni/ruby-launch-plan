# gems demo

Simple demo project to show how to use a gem.

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

## References

* [RubyGems 101: How to use a third-party Gem in your Ruby application - medium.com](https://medium.com/@gratefulcheddar/rubygems-101-how-to-use-a-third-party-gem-in-your-ruby-application-37249529dbc7)
* [Bundler - bundler.io](https://bundler.io/)
