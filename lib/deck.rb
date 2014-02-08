require 'card'

class Deck
  attr_accessor :deck

  def initialize
    @deck = []
    SUITS.each do |suit|
      VALUES.each do |key, value|
        @deck << Card.new(key, suit)
      end
    end
  end
end