require_relative '../src/Card'
require 'spec_helper'

describe Card do
  before(:all) do
    @one_spade = Card.new(1, Card::SPADE)
    @two_heart = Card.new(2, Card::HEART)
    @one_heart = Card.new(1, Card::HEART)
  end

  context 'Comparing cards' do

    it 'should return false when 1 > 2' do
      expect(@one_spade > @two_heart).to be false
    end

    it 'should return true when 1spade = 1 heart' do
      expect(@one_spade == @one_heart).to be true
    end
  end

end