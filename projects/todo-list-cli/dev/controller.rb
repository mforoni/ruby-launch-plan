# frozen_string_literal: true

require_relative 'view.rb'
require_relative 'model.rb'

class Command
  attr_reader :name, :desc, :block

  def initialize(name, desc, block)
    @name = name
    @desc = desc
    @block = block
  end

  def to_s
    @name + ': ' + @desc
  end
end

module Cli
  TOOL_NAME = 'Todo List CLI'
  DEFAULT_ITEMS_PATH = 'items.csv'

  def self.load_items(path)
    File.readlines(path).each(&:chomp!)
  end

  def self.find_command(commands, str)
    commands.each do |cmd|
      return cmd if cmd.name == str
    end
    nil
  end

  def self.cmd_names(cmds)
    names = []
    cmds.each_with_index do |c, i|
      names[i] = c.name
    end
    names
  end

  def self.build_error_msg(msg, cmds)
    s = StringIO.new
    s << 'Error: ' << msg << $RS
    s << 'Please provide one of the valid commands: '
    s << cmd_names(cmds).join(', ') << '. Type help for more information.' << $RS
    s.string
  end

  def self.parse_input(cmds, input)
    return -> { TodoListView.show(build_error_msg('No command provided.', cmds)) } if input.nil?

    cmd = find_command(cmds, input)
    return -> { TodoListView.show(build_error_msg('Command not found.', cmds)) } if cmd.nil?

    cmd.block
  end

  def self.run
    stop = false
    include TodoListView
    cmds = [Command.new('list', 'Displays the list of items',
                        lambda {
                          items = load_items(DEFAULT_ITEMS_PATH)
                          if items.count.zero?
                            TodoListView.show("No items found.\n")
                          else
                            TodoListView.show_list(items)
                          end
                        }),
            Command.new('quit', 'Quit the application',
                        -> { stop = true }),
            Command.new('help', 'Shows the help',
                        lambda {
                          TodoListView.show("Available commands:\n")
                          TodoListView.show_list(cmds)
                        })]
    TodoListView.show("Welcome to #{TOOL_NAME}!\n")
    until stop
      TodoListView.show('> ')
      # input = gets.chomp!
      input = gets.chomp
      function = parse_input(cmds, input)
      function.call
    end
  end
end
