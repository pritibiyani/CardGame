class Card
  SPADE   = 'SPADE'
  HEART   = 'HEART'
  DIAMOND = 'DIAMOND'
  CLUB    = 'CLUB'

  TYPE = [SPADE, HEART, DIAMOND, CLUB]

  def initialize(value, type)
    @value, @type = value, type
  end

  def >(another_card)
    @value > another_card.value
  end

  def ==(another_card)
    @value == another_card.value
  end

  def to_s
    puts " #{value} : #{type}"
  end
end

