require_relative '../src/Card'
require_relative '../src/Deck'
require_relative '../src/Player'

class Game

  def initialize(dealer, player_one, player_two)
    @dealer     = dealer
    @player_one = player_one
    @player_two = player_two
  end

  def start_game
    game_deck = Deck.new
    until @player_one.empty_deck? or @player_two.empty_deck?
      card_one = @player_one.throw_card
      card_two = @player_two.throw_card
      puts "Comparing cards #{card_one} || #{card_two}"
      game_deck.append_to_deck card_one
      game_deck.append_to_deck card_two

      if card_one == card_two
        puts "BEFORE GAME STACK #{game_deck.length} "
        puts "EQUAL ... #{card_one}  #{card_two} "
        puts "AFTER GAME STACK #{game_deck.length} "
        next
      else
        if card_one > card_two
          puts "BEFORE PLAYER ONE HAND ... #{@player_one.deck_length} "
          puts "BEFORE GAME STACK #{game_deck.length} "
          @player_one.pick_hand game_deck
          game_deck.empty_stack
          puts "AFTER GAME STACK #{game_deck.length} "
          puts "AFTER PLAYER ONE HAND ... #{@player_one.deck_length} "
        else
          puts "BEFORE  PLAYER TWO HAND ... #{@player_two.deck_length} "
          puts "BEFORE GAME STACK #{game_deck.length} "
          @player_two.pick_hand game_deck
          game_deck.empty_stack
          puts "AFTER GAME STACK #{game_deck.length} "
          puts "AFTER PLAYER TWO HAND ... #{@player_two.deck_length} "
        end
      end
    end

    if @player_one.empty_deck?
      puts "#{@player_one} is winner "
    else
      puts "#{@player_two} is winner "
    end
  end


end