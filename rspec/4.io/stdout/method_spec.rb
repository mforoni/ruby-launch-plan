# frozen_string_literal: true

def validate(inp)
  warn 'Invalid input' if inp.negative?

  puts 'Input is valid'
end

context '#validate' do
  before do
  end

  it 'outputs a confirmation message for a valid input' do
    expect { validate(33) }.to output("Input is valid\n").to_stdout
  end

  it 'outputs a message to stderr for an invalid input' do
    expect { validate(-3) }.to output("Invalid input\n").to_stderr
  end
end
