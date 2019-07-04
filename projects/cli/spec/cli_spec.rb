# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../cli', __dir__)

describe Command do
  it 'should do nothing if empty block is provided' do
    cmd = Command.new('TestCmd', 'Description', -> {})

    expect(cmd.execute).to eq(nil)
  end
  it 'should compute 3 + 7 if the block is 3 + 7' do
    cmd = Command.new('TestCmd', 'Description', -> { 3 + 7 })

    expect(cmd.execute).to eq(10)
  end
end

describe Cli do
  it 'should say no available commands if no commands are defined in cli' do
    cli = Cli.new('TestCli', [])

    expect(cli.help).to include('No available commands')
  end

  it 'should contains all command descriptions' do
    cmd1 = Command.new('cmd1', 'Description of first command', -> {})
    cmd2 = Command.new('cmd2', 'Description of second command', -> {})
    cmd3 = Command.new('cmd3', 'Description of third command', -> {})
    commands = [cmd1, cmd2, cmd3]
    cli = Cli.new('TestCli', commands)

    commands.each do |cmd|
      expect(cli.help).to include(cmd.desc)
    end
  end
end
