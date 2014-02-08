require 'rspec'
require 'player'


describe Player do
  subject(:game) {Game.new}
  subject(:person) { Player.new("augi", game) }

  describe '#initialize' do
    test_game = Game.new
    test_deck = test_game.deck

    it "deals player a 5-card hand" do
      expect(person.hand.cards.count).to eq(5)
    end

    it "gives player 100 bucks to start with" do
      expect(person.wallet).to eq(100)
    end
  end

end