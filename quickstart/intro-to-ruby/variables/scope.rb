# frozen_string_literal: true

def demo_for_loop()
    arr = [1, 2, 3]

    for i in arr do
     a = 5 # a is initialized here
    end

    puts a # is it accessible here? 
    # Yes, for..do/end code did not create a new inner scope.
    puts 'A variable initialized inside a for loop is accessible outside. for loop do not create an inner scope'
end

def demo_each
  arr = [1, 2, 3]

  arr.each do |_i|
    a = 5 # a is initialized here
  end

  begin
    puts a # is it accessible here? 
    # No, each, times and other method invocations create a new inner scope.
  rescue NameError
    puts 'A variable initialized inside a each loop is not accessible outside.'  
  end
end

demo_for_loop

demo_each
