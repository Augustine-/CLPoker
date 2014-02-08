SUITS = [:diamonds, :hearts, :clubs, :spades]
VALUES = {
  "A" => 14,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "10" => 10,
  "J" => 11,
  "Q" => 12,
  "K" => 13
}

class Card
  attr_accessor :suit, :card, :value

  def initialize(card, suit)
    @suit = suit
    @card = card
    @value = VALUES[card]
  end

  def to_s
    "#{@card} of #{@suit}"
  end
end