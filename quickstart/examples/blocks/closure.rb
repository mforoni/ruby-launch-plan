# frozen_string_literal: true

def call_proc(my_proc)
  count = 500
  my_proc.call
end
count   = 1
my_proc = proc { puts count }
p call_proc(my_proc) # What does this print?
