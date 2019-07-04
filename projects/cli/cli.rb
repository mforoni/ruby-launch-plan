# frozen_string_literal: true

require 'etc'
require 'English'

class Command
  attr_reader :name, :desc, :block

  def initialize(name, desc, block)
    @name = name
    @desc = desc
    @block = block
  end

  def execute
    block.call
  end

  def to_s
    @name
  end
end

class Cli
  attr_reader :name, :commands

  def initialize(name, commands)
    @name = name
    @commands = commands
    # puts @commands.inspect
  end

  def help
    if commands.empty?
      return 'No available commands. I\'m sorry'
    end
    s = StringIO.new
    s << "Welcome to #{name}!" << $RS
    s << 'Available commands:' << $RS
    commands.each do |cmd|
      s << "- #{cmd.name}: #{cmd.desc}" << $RS
    end
    s.string
  end

  def parse(str)
    commands.each do |cmd|
      return cmd if cmd.name == str
    end
    nil
  end

  def to_s
    @name
  end
end

def os_user
  ENV['USER']
end

if $PROGRAM_NAME == __FILE__
  cmds = [Command.new('hello', 'It says hello to you.',
                      -> { puts 'Hi ' + os_user }),
          Command.new('user', 'Returns current logged in user',
                      -> { puts os_user })]
  cli = Cli.new('HelloWorldCli', cmds)
  cmd = cli.parse(ARGV[0])
  if cmd.nil?
    puts cli.help
  else
    cmd.execute
  end
end
