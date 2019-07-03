# Ruby Tutorial

This [Ruby Tutorial][]

[Ruby Tutorial]: http://rubylearning.com/

Parentheses are usually optional with a method call. These calls are all valid:

```ruby
foobar
foobar()
foobar(a, b, c)
foobar a, b, c
```

In Ruby, everything from an integer to a string is considered to be an object. And each object has built in 'methods'.  Some methods such as puts and gets are available everywhere and don't need to be associated with a specific object.
Technically speaking, these methods are provided by Ruby's `Kernel module` and they are included in all Ruby objects (the `Kernel module` is included by class Object, so its methods are available in every Ruby object). When you run a Ruby application, an object called main of class Object is automatically created. This object provides access to the Kernel methods.

## Features

1. _Case sensitive_ - The keyword `end`, for example, is completely different from the keyword `END`.
1. _Comments_ - Anything following an unquoted `#`, to the end of the line on which it appears, is ignored by the interpreter. Also, to facilitate large comment blocks, the ruby interpreter also ignores anything between a line starting with `=begin` and another line starting with `=end`.
1. _Statement delimiters_ - Multiple statements on one line must be separated by semicolons, but they are not required at the end of a line; a linefeed is treated like a semicolon. If a line ends with a backslash (\), the linefeed following it is ignored; this allows you to have a single logical line that spans several lines.
1. Keywords - Also known as reserved words (around 42 of them) in Ruby typically cannot be used for other purposes. You may be used to thinking that a false value may be represented as a zero, a null string, a null character, or various other things. But in Ruby, all of these *values* are true; in fact, everything is true except the reserved words false and nil. Keywords would be called "reserved words" in most languages and they would never be allowed as identifiers. The Ruby parser is flexible and does not complain if you prefix these keywords with @, @@ or $ prefixes, or sigils, and use them as instance, class or global variable names, respectively. The best practice is to treat these keywords as reserved.

## Class Hierarchy

Add image

## Numbers

Ruby integers are objects of class `Fixnum` or `Bignum`. The `Fixnum` and `Bignum` classes represent integers of differing sizes. Both classes descend from `Integer` and therefore `Numeric`. The floating-point numbers are objects of class Float, corresponding to the native architecture's double data type.

## Strings

String literals are sequences of characters between single or double quotation marks.

`''` is an empty string.

In Ruby, strings are **mutable**. They can expand as needed, without using much time and memory. Ruby stores a string as a sequence of characters.

If `puts` is passed an object that is not a string, puts calls the `to_s` method of that object and prints the string returned by that method.

## Variables and Assignment

## Scope

Scope refers to the reach or visibility of variables. Different types of variables have different scoping rules.

### Global scope and global variables

The global scope covers the entire program. Global variables are distinguished by starting with a dollar-sign (`$`) character. They are available everywhere in your program.

### Built-in global variables

The Ruby interpreter starts up with a fairly large number of global variables already initialized. These variables store information that's of potential use anywhere and everywhere in your program. For example, the global variable `$0` contains the name of the file Ruby is executing. The global `$:` contains the directories that make up the path Ruby searches when you load an external file. `$$` contains the process id of the Ruby process. And there are more.

### Local scope

* The top level (outside of all definition blocks) has its own local scope.
* Every class or module definition block has its own local scope, even nested class/module definition blocks.
* Every method definition (`def`) has its own local scope.

## Getting Input

TODO

## Ruby Names

TODO

## Methods

### Default values

Ruby lets you specify default values for a method's arguments-values that will be used if the caller doesn't pass them explicitly. You do this using the assignment operator.

```ruby

```

Ruby allow us to write functions that can accept variable number of parameters - see `p011vararg.rb`.

Are the parameters passed by value or reference? Observe the following example:

```ruby
def downer(string)  
    string.downcase  
end  
a = "HELLO"  
downer(a)      # -> "hello"  
puts a         # -> "HELLO"  
```

```ruby
def downer(string)  
    string.downcase!  
end  
a = "HELLO"  
downer(a)      # -> "hello"  
puts a         # -> "hello"  
```

Gary Wright in the Ruby forum posted in reply to some posts:

> It is confusing to me to even think about methods returning objects unless you are using that as a very specific shorthand for saying that methods return *references* to objects. That is the unifying idea that helped me understand how Ruby manipulates data -- it is all references and not the objects themselves. The objects themselves are almost completely hidden from the programmer (excluding C extensions) in Ruby. Everything is a reference to an object.
