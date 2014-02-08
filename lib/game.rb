require 'player'
require 'card'
require 'hand'
require 'deck'

class Game
  attr_accessor :deck, :pot, :player1, :player2

  def initialize
    @deck = Deck.new
    @pot = 0
    @player1 = Player.new("Alex",  self)
    @player2 = Player.new("Augustine", self)
    # num_of_players.times { |t| @players << Player.new("Player#{t+1}") }
  end
end
