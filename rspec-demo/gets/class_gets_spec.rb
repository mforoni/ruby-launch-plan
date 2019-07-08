# frozen_string_literal: true

class Test
  def run
    puts "Enter 'class' to create a new class."
    input = gets.chomp
  end
end

describe 'gets' do
  it 'can be stubbed lower than that' do
    allow_any_instance_of(Test).to receive(:gets).and_return('class')
    expect(Test.new.run).to eq('class')
  end
  # or even
  it 'or even lower than that' do
    cli = Test.new
    allow(cli).to receive(:gets).and_return('class')
    expect(cli.run).to eq('class')
  end
end
