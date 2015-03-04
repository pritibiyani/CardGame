require_relative '../src/Deck'
require_relative '../src/Card'
require 'spec_helper'

describe Deck do

  def test_setup
    deck   = Deck.new
    values = (1..4).to_a
    types  = [Card::HEART]
    types.each do |type|
      values.size.times do |i|
        deck.append_to_deck Card.new(values[i], type)
      end
    end
    deck
  end


  it 'should split cards in two decks' do
    deck               = test_setup
    deck_one, deck_two = deck.split_deck
    expect(deck_one).to be_a_kind_of(Deck)
    expect(deck_two).to be_a_kind_of(Deck)
  end

  it 'should add card to deck and return deck with added card' do
    card = Card.new(3, Card::DIAMOND)
    deck = test_setup
    deck.append_to_deck card
    expect(deck.count).to eq(5)
  end


  it 'should pop card from deck' do
    deck = test_setup
    card = deck.pop
    expect(card).to be_a_kind_of(Card)
  end

  it 'should return true when deck is empty' do
    deck = test_setup
    4.times { deck.pop }
    expect(deck.empty?).to be true
  end

end