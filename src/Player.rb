require_relative '../src/Deck'
class Player

  def initialize(name)
    @name = name
  end

  def assign_deck(deck)
    @deck = deck
  end

  def throw_card
    @deck.pop
  end

  def pick_hand(cards)
    @deck.append_to_deck cards
  end

  def empty_deck?
    @deck.empty?
  end

  def to_s
    puts "#{@name}"
  end

  def deck_length
    @deck.length
  end
end