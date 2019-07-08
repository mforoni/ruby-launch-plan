# frozen_string_literal: true

def run
  puts "Enter 'class' to create a new class."
  input = gets.chomp
end

describe 'gets' do
  it 'belongs to Kernel' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('class')
    expect(run).to eq('class')
  end
end
