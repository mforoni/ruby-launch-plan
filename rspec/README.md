# RSpec Demo

This simple demo project show how to write unit tests for your ruby code.

## About RSpec

[RSpec](https://rspec.info/) is a RSpec is a 'Domain Specific Language' (DSL) testing tool written in Ruby to test Ruby code.[^1]

[^1]: https://en.wikipedia.org/wiki/RSpec

Initialize, create `spec` folder and `.rspec` file:

```sh
rspec --init
```

Run the tests:

```sh
rspec
```

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

## Guidelines

[Better Specs](http://www.betterspecs.org/) tries to collect most of the "best practices" that other developers learn through years of experience.

### Guidelines on when to use Mocks and Stubs

1. If the method under test returns a value & it has no side effects (creating files, making API requests, etc.) then you don’t need a mock. Just check for the return value.
2. If the method is working with external objects & sending orders to them, then you can **mock** the interactions with these objects.
3. If the method is requesting data from an external service (like an API), then you can use a **stub** to provide this data for testing purposes.

You want to reserve mocking for interactions with the outside world.
In other words avoid mocking your own application’s classes!

## Resources

* [1.hello_world](1.hello_world)
* [2.factorial](2.factorial)
* [3.image_flipper](3.image_flipper)
* [4.io](4.io)
* [5.detective](5.detective)

Others:

* [Back to Basics: Writing Unit Tests First - thoughtbot.com](https://thoughtbot.com/blog/back-to-basics-writing-unit-tests-first)
* https://thoughtbot.com/blog/rspec-integration-tests-with-capybara
