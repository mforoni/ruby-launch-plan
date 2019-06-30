# RSpec Demo

This simple demo project show how to write unit tests for your ruby code.

## About RSpec

[RSpec](https://rspec.info/) is a RSpec is a 'Domain Specific Language' (DSL) testing tool written in Ruby to test Ruby code.[^1]

[^1]: https://en.wikipedia.org/wiki/RSpec

### How to write a test in RSpec

You need to create a `describe` block to group all your tests together and to tell *RSpec* which class you are testing.

Next is the `it` block:

```ruby
describe Factorial do
  it "does something" do
    # ...
  end
end
```

This is the test name, plus a way to group together all the components of the test itself.

The components are:

1. **Setup**: where you create any objects that you need to create. It’s the *preparation phase*.
1. **Exercise**: you call the method you want to exercise to get its return value.
1. **Verify**: Finally, you verify the result with an expectation (RSpec) or assertion (Minitest).

## Resources

* [The Definitive RSpec Tutorial With Examples - www.rubyguides.com](https://www.rubyguides.com/2018/07/rspec-tutorial/)
* [RSpec Hello World - www.codewithjason.com](https://www.codewithjason.com/rspec-hello-world/)
* [Getting Started with RSpec — Part 1 - medium.com](https://medium.com/@mindovermiles262/getting-started-with-rspec-part-1-9418909f5e53)

https://thoughtbot.com/blog/back-to-basics-writing-unit-tests-first