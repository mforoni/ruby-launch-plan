# Debugging in Ruby

The following gems provide great help during debug:

## Byebug

[Byebug]: https://github.com/deivid-rodriguez/byebug

[Byebug] is a simple to use and feature rich debugger for Ruby. It uses the TracePoint API for execution control and the Debug Inspector API for call stack navigation. Therefore, Byebug doesn't depend on internal core sources. Byebug is also fast because it is developed as a C extension and reliable because it is supported by a full test suite.

It offers:

* Stepping: Running your program one line at a time.
* Breaking: Pausing the program at some event or specified instruction, to examine the current state.
* Evaluating: Basic REPL functionality, although [pry][] does a better job at that.
* Tracking: Keeping track of the different values of your variables or the different lines executed by your program.

[pry]: http://pryrepl.org/

## pry-byebug

[pry-byebug]: https://github.com/deivid-rodriguez/pry-byebug

[pry-byebug][] adds step-by-step debugging and stack navigation capabilities to [pry][] using byebug.

To use, invoke `pry` normally. No need to start your script or app differently. Execution will stop in the first statement after your binding.pry.

```ruby
def some_method
  puts 'Hello World' # Run 'step' in the console to move here
end

binding.pry
some_method          # Execution will stop here.
puts 'Goodbye World' # Run 'next' in the console to move here.
```

### Pry

[Pry][] is a powerful alternative to the standard IRB shell for Ruby. It features syntax highlighting, a flexible plugin architecture, runtime invocation and source and documentation browsing.

[Pry]: http://pryrepl.org/

```ruby
pry(main)> cd FileUtils
pry(FileUtils):1> show-method rm

From: /opt/ruby/lib/ruby/1.9.1/fileutils.rb @ line 556:
Number of lines: 10
Owner: FileUtils

def rm(list, options = {})
  fu_check_options options, OPT_TABLE['rm']
  list = fu_list(list)
  fu_output_message "rm#{options[:force] ? ' -f' : ''} #{list.join ' '}" if options[:verbose]
  return if options[:noop]

  list.each do |path|
    remove_file path, options[:force]
  end
end
pry(FileUtils):2>
```
