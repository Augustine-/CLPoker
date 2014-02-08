require 'game'

class Player
  attr_accessor :name, :wallet, :hand

  def initialize(name, game)
    @name = name
    @hand = Hand.new(game.deck)
    @game = game
    @wallet = 100
  end


end