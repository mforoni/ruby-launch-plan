# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../view', __dir__)

describe '#show_list' do
  include TodoListView

  context 'when testing with an empty array' do
    it 'should not print to stdout' do
      allow(STDOUT).to receive(:puts)
      allow(TodoListView).to receive(:puts)

      TodoListView.show_list([])

      expect(STDOUT).to_not have_received(:puts)
      expect(TodoListView).to_not have_received(:puts)
    end
  end

  context 'when testing with one string' do
    it "should print '- ' followed by the the string" do
      item = 'my item'

      expect { TodoListView.show_list([item]) }.to output('- ' + item + "\n").to_stdout
    end
  end

  context 'when testing with an array of strings' do
    it "should print one line for element starting each line with '- ' to stdout" do
      items = %w[first second third]
      s = StringIO.new
      items.each do |i|
        s << '- ' << i << "\n"
      end
      expected = s.string

      expect { TodoListView.show_list(items) }.to output(expected).to_stdout
    end
  end
end

describe '#show' do
  include TodoListView

  it 'should print the message to stdout' do
    expect { TodoListView.show('A message') }.to output('A message').to_stdout
    expect { TodoListView.show("Another message\n") }.to output(
      "Another message\n"
    ).to_stdout
    expect { TodoListView.show('A message' + ' from me') }.to output(
      'A message from me'
    ).to_stdout
  end

  context 'when a nil arg has been provided' do
    it 'should not print to stdout' do
      allow(STDOUT).to receive(:print)
      allow(TodoListView).to receive(:print)

      TodoListView.show(nil)

      expect(STDOUT).to_not have_received(:print)
      expect(TodoListView).to_not have_received(:print)
    end
  end

  context 'when an empty string has been provided' do
    it 'should not print to stdout' do
      allow(STDOUT).to receive(:print)
      allow(TodoListView).to receive(:print)

      s = StringIO.new
      TodoListView.show(s.string)

      expect(STDOUT).to_not have_received(:print)
      expect(TodoListView).to_not have_received(:print)

      TodoListView.show('')

      expect(STDOUT).to_not have_received(:print)
      expect(TodoListView).to_not have_received(:print)
    end
  end
end

describe '#show_error' do
  include TodoListView

  context 'when testing with no argument' do
    it 'should raise ArgumentError' do
      expect { TodoListView.show_error }.to raise_error(ArgumentError)
    end
  end

  context 'when testing with a string msg' do
    it 'should print the message' do
      allow(TodoListView).to receive(:print)

      msg = 'This is the message'
      TodoListView.show_error(msg)

      expect(TodoListView).to have_received(:print).once
      expect(TodoListView).to have_received(:print).with('Error: ' + msg).once

    end

    it 'should print the message to stdout' do
      msg = 'This is the message'
      expect { TodoListView.show_error(msg) }.to output(
        'Error: ' + msg
      ).to_stdout
    end
  end
end
