# Ruby Quickstart

## About Ruby

[Ruby][] is a dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.

### The Ideals of Ruby’s Creator

Ruby is a language of careful balance. Its creator, Yukihiro “Matz” Matsumoto, blended parts of his favorite languages (Perl, Smalltalk, Eiffel, Ada, and Lisp) to form a new language that balanced functional programming with imperative programming.

[About Ruby][] provides an interesting overview of the main aspects of the language:

* Seeing Everything as an Object
* Ruby’s Flexibility
* Blocks: a Truly Expressive Feature
* Ruby and the Mixin
* Ruby’s Visual Appearance

[Ruby]: https://www.ruby-lang.org/en/
[About Ruby]: https://www.ruby-lang.org/en/about/

## Steps

My quickstart launch plan to master Ruby is to complete the following tutorials/articles/blogs:

* [x] [Ruby in Twenty Minutes - www.ruby-lang.org](https://www.ruby-lang.org/en/documentation/quickstart/)
* [ ] [Introduction to Programming with Ruby - launchschool.com](https://launchschool.com/books/ruby/read/introduction#howtoreadthisbook)
* [ ] [Ruby Tutorial - rubylearning.com](http://rubylearning.com/satishtalim/tutorial.html)
* [ ] [Learn X in Y minutes Where X=ruby](https://learnxinyminutes.com/docs/ruby/)
* [x] [Ruby: pass by value or pass by reference?](http://rubyblog.pro/2017/09/pass-by-value-or-pass-by-reference)
* [ ] [Object-Oriented Programming - www.rubyguides.com](https://www.rubyguides.com/ruby-tutorial/object-oriented-programming/)
* [x] Proc & Lambdas:
  * [x] [The Ultimate Guide to Blocks, Procs & Lambdas - www.rubyguides.com](https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/)
  * [x] [Functional Programming in Ruby for people who don’t know what functional programming is - medium.com](https://medium.com/craft-academy/functional-programming-in-ruby-for-people-who-dont-know-what-functional-programming-is-f0c4ab7dc68c)
* [ ] Ruby collections
* [ ] Multithreading
* [ ] Tasks: small tasks that you probably will face while developing application in Ruby.

## Bonus

### Most Precious Gems

* [RuboCop](https://github.com/rubocop-hq/rubocop) is a Ruby static code analyzer and code formatter. Out of the box it will enforce many of the guidelines outlined in the community [Ruby Style Guide](https://rubystyle.guide/).
* [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug): Adds step-by-step debugging and stack navigation capabilities to pry using byebug.

### IDE Setup

For **vs-code**. Install the following plugin:

* [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby): This extension provides Ruby language and debugging support for VS Code. (You can check the readme of the project on [github.com/rubyide/vscode-ruby](https://github.com/rubyide/vscode-ruby) but the content is the same).
* [ruby-rubocop](https://marketplace.visualstudio.com/items?itemName=misogi.ruby-rubocop): This extension provides interfaces to rubocop for vscode.
* [Ruby Solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph): Solargraph is a language server that provides intellisense, code completion, and inline documentation for Ruby.

How to set up debug in vscode:

* [Debugging Ruby in VS Code - dev.to](https://dev.to/dnamsons/ruby-debugging-in-vscode-3bkj)
* but better debugging tools are available as standard gems. Read more at [Debugging](Debugging.md).
