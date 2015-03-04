class Dealer

  def initialize deck
    @deck = deck
  end

  def distribute_cards(player_one, player_two)
    deck_one, deck_two = @deck.split_deck
    player_one.assign_deck deck_one
    player_two.assign_deck deck_two
  end
end