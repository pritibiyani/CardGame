require_relative '../src/Card'

class Deck

  def initialize
    @cards = []
  end

  def split_deck
    shuffle
    length = @cards.length / 2
    deck1, deck2 = @cards.each_slice(length).to_a
    [Deck.new().add_to_deck(deck1), Deck.new().add_to_deck(deck2)]
  end

  def append_to_deck more_card
    @cards << more_card
  end

  def pop
    card = @cards.shift
    card
  end

  def count
    @cards.length
  end

  def shuffle
    @cards.shuffle!
  end

  def add_to_deck deck
    @cards = deck
    self
  end

  def empty?
    @cards.length == 0
  end

  def empty_stack
    @cards.clear
  end

  def length
    @cards.length
  end

  # def to_s
  #   puts "CARDS count : #{@cards.length}"
  #   @cards.each do |card|
  #     puts card
  #   end
  # end

end