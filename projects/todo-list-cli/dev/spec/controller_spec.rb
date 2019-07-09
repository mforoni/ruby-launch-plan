# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../controller', __dir__)

describe Command do
  let(:cmd) { Command.new('cmd', 'description', -> { 4 * 7 }) }
  let(:item) { Item.new('Do the dishes') }

  it 'should have name, desc attributes' do
    expect(cmd).to have_attributes(name: 'cmd', desc: 'description')
  end
  it 'should have a lambda attribute' do
    expect(cmd.block.call).to eq(4 * 7)
  end
end

describe '#find_command' do
  include Cli
  let(:one_cmd) { [Command.new('cmd', 'description'), -> {}] }
  let(:cmds) do
    [Command.new('cmd1', 'description 1', -> {}),
     Command.new('cmd2', 'description 2', -> {})]
  end

  context 'when no commands are provided' do
    it 'should return nil' do
      expect(Cli.find_command([], 'cmd')).to be(nil)
    end
  end

  context 'when the name of the command is in the array' do
    it 'should return the command' do
      expect(Cli.find_command(cmds, cmds[1].name)).to be(cmds[1])
    end
  end

  context 'when the name of the command is not in the array' do
    it 'should return nil' do
      expect(Cli.find_command(cmds, 'cmd')).to be(nil)
    end
  end
end

describe '#cmd_names' do
  let(:one_cmd) { [Command.new('cmd', 'description'), -> {}] }
  let(:cmds) do
    [Command.new('cmd1', 'description 1', -> {}),
     Command.new('cmd2', 'description 2', -> {})]
  end

  context 'when a non empty array of Command objects is given' do
    it 'should return the command names' do
      expect(Cli.cmd_names(cmds)).to match_array %w[cmd1 cmd2]
    end
  end
end

describe '#build_error_msg' do
  it 'should always return the text Error and the message' do
    msg = 'This an error message'
    expect(Cli.build_error_msg(msg, [])).to include('Error: ' + msg)
  end

  context 'when testing build_error_msg method' do
    let(:one_cmd) { [Command.new('cmd', 'description'), -> {}] }
    let(:cmds) do
      [Command.new('cmd1', 'description 1', -> {}),
       Command.new('cmd2', 'description 2', -> {})]
    end

    it 'should return the list of commands to help the user' do
      error_msg = Cli.build_error_msg('This is the message', cmds)
      cmds.each do |c|
        expect(error_msg).to include(c.name)
      end
    end
  end
end

describe '#run' do
  context 'when a wrong input has been provided' do
    it "should instruct the view to show the error 'Command not found.'" do
      allow(TodoListView).to receive(:show)
      allow_any_instance_of(Kernel).to receive(:gets).and_return('abcd', 'quit')

      Cli.run

      expect(TodoListView).to have_received(:show).with(/Error: Command not found./).once
    end
  end

  context "when the input 'help' is given" do
    it 'should instruct the view to show the help' do
      allow(TodoListView).to receive(:show)
      allow(TodoListView).to receive(:show_list)
      allow_any_instance_of(Kernel).to receive(:gets).and_return('help', 'quit')

      Cli.run

      expect(TodoListView).to have_received(:show).with(/Available commands./).once
      expect(TodoListView).to have_received(:show_list).once
    end
  end

  context "when there are no items and the input 'list' is given" do
    it "should instruct the view to show 'No items found.'" do
      allow(TodoListView).to receive(:show)
      allow(TodoListView).to receive(:show_list)
      allow_any_instance_of(Kernel).to receive(:gets).and_return('list', 'quit')
      allow(Cli).to receive(:load_items) { [] }

      Cli.run

      expect(TodoListView).to have_received(:show).with(/No items found./).once
      expect(TodoListView).to_not have_received(:show_list)
    end
  end

  context "when there are items and the input 'list' is given" do
    it "should instruct the view to list the items.'" do
      arg = ['First item']
      allow(TodoListView).to receive(:show)
      allow(TodoListView).to receive(:show_list)
      allow_any_instance_of(Kernel).to receive(:gets).and_return('list', 'quit')
      allow(Cli).to receive(:load_items) { arg }

      Cli.run

      expect(TodoListView).to have_received(:show_list).with(arg).once
    end
  end
end
