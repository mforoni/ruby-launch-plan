# frozen_string_literal: false

def change_str(str)
  puts 'begin change_str(str)'
  puts '  str = ' + str + ', object_id = ' + str.object_id.to_s
  str = str + 'bar'
  puts '  str = str + \'bar\''
  puts '  str = ' + str + ', object_id = ' + str.object_id.to_s
  puts 'end change_str(str)'
end

s = 'foo'
puts 's = ' + s + ', object_id = ' + s.object_id.to_s
change_str(s)
puts 's = ' + s + ', object_id = ' + s.object_id.to_s
puts
puts 'Strgin#+ doc says it returns a new String containing other_str concatenated to str.'