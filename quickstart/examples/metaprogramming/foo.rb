# frozen_string_literal: true

class Foo
  attr_reader :something

  def initialize(input)
    @something = input
  end
end

@registered = {}
def register(reference_name, class_name, params = [])
  @registered[reference_name] = { class_name: class_name, params: [params].flatten }
end

def create(reference_name)
  h = @registered[reference_name]
  h[:class_name].new(*(h[:params]))
end

register('foo', Foo, ['something else'])
puts create('foo').something
