CONSTANT = 'This is a constant'

$var = 'I\'m a global variable'

class Foo
    @@counter = 0
    @count = 0
end

puts CONSTANT
CONSTANT = 'But it can be changed'
puts CONSTANT

puts $var
$var = 'And now I\'ve changed value'
puts $var

foo1 = Foo.new
foo2 = Foo.new
puts foo1.instance_variable_get(:@count)
puts foo1.instance_variable_set(:@count, 33)
puts foo1.instance_variable_get(:@count)
puts foo2.instance_variable_get(:@count)
puts Foo.class_variable_get(:@@counter)
