# frozen_string_literal: true

QUESTION = 'Do you know how to play? (yes or no)'

def first_question(question = QUESTION)
  puts question
  answer = STDIN.gets.chomp.downcase
  answer
end

def top_print_me(msg)
  print msg
end

def kernel_print_me(msg)
  Kernel.print msg
end

class Foo
  def self.print_me(msg)
    print msg
  end
end

context '#first_question' do
  let(:input) { "Yes\n" }

  before do
    allow(STDOUT).to receive(:puts)
    allow(Kernel).to receive(:puts)
    allow(STDIN).to receive(:gets).and_return(input)
  end

  it 'outputs a question' do
    first_question

    expect(STDOUT).to have_received(:puts).with(
      QUESTION
    ).once

    expect(Kernel).to_not have_received(:puts).with(
      QUESTION
    )
  end

  it 'asks for input' do
    first_question

    expect(STDIN).to have_received(:gets).once
  end

  it 'returns the sanitized input' do
    expect(first_question).to eq 'yes'
  end
end

context '#top_print_me' do
  before do
    allow(Kernel).to receive(:print)
    allow(STDOUT).to receive(:print)
  end

  it 'print the msg but not with Kernel.print' do
    msg = 'This is the message'
    top_print_me(msg)

    expect(STDOUT).to_not have_received(:print)
    expect(Kernel).to_not have_received(:print)
  end
end

context '#kernel_print_me' do
  before do
    allow(Kernel).to receive(:print)
    allow(STDOUT).to receive(:print)
  end

  it 'print the msg' do
    msg = 'This is the message'
    kernel_print_me(msg)

    expect(STDOUT).to_not have_received(:print)
    expect(Kernel).to have_received(:print).once
  end
end

describe Foo do
  context '#print_me' do
    it 'print the msg' do
      allow(Foo).to receive(:print)

      msg = 'This is the message'
      Foo.print_me(msg)

      expect(Foo).to have_received(:print).once
    end
  end
end
