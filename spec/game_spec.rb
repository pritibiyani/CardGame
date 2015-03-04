require_relative '../src/Game'
require_relative '../src/Player'
require_relative '../src/Dealer'
require_relative '../src/Card'
require 'spec_helper'

describe Game do
  before(:all) do
    @DECK = Deck.new
    ranks = (1..13).to_a
    suits = Card::TYPE
    suits.each do |suit|
      ranks.size.times do |i|
        @DECK.append_to_deck Card.new(ranks[i], suit)
      end
    end
  end

  context 'Game Setup' do

    def get_test_deck
      deck = @DECK
      deck.append_to_deck Card.new 1, Card::SPADE
      deck.append_to_deck Card.new 3, Card::HEART
      deck.append_to_deck Card.new 4, Card::SPADE
      deck.append_to_deck Card.new 2, Card::SPADE
      deck.append_to_deck Card.new 2, Card::DIAMOND
      deck.append_to_deck Card.new 2, Card::HEART
      deck
    end

    it 'should end game when any of player does not have card' do
      game_deck = get_test_deck
      player1   = Player.new('P1')
      player2   = Player.new('P2')
      dealer    = Dealer.new(game_deck)
      dealer.distribute_cards player1, player2
      game = Game.new(dealer, player1, player2)
      game.start_game
    end
  end

end