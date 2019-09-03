# frozen_string_literal: true

require 'spec_helper'
require File.expand_path('../game', __dir__)

describe 'game' do
  let(:input) { 'Joe' }

  before do
    allow(STDOUT).to receive(:puts)
    allow_any_instance_of(Kernel).to receive(:gets).and_return(input)
  end

  context 'when testing ask_for_name method' do
    it "should aks for the user's name" do
      name = capture_name

      expect(STDOUT).to have_received(:puts).with(ASK_FOR_NAME).once
    end

    it "should capture the user's name" do
      name = capture_name

      expect(name).to eq 'Joe'
    end
  end
end
