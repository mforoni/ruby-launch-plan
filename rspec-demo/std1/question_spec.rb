# frozen_string_literal: true

def first_question
  puts 'Do you know how to play? (yes or no)'
  answer = STDIN.gets.chomp.downcase
  answer
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
      'Do you know how to play? (yes or no)'
    ).once

    expect(Kernel).to_not have_received(:puts).with(
      'Do you know how to play? (yes or no)'
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
