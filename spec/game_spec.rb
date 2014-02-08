require 'rspec'
require 'game'


describe Game do
  subject(:poker) { Game.new }

  describe "initialize" do
    it "creates a new deck object" do
      expect(poker.deck.class).to eq(Deck)
    end

    it "sets pot to 0 at game start" do
      expect(poker.pot).to eq(0)
    end

    # it "checks amount of players" do
    #   expect(poker.players.count).to eq(4)
    # end
    #
    # it "names players" do
    #   expect(poker.players[1].name).to eq("Player2")
    # end

    it "updates pot when a bet is made" do
      # player 1 bets 10
      # player 2 bets 10
      expect(poker.pot).to eq(20)
    end
  end

  describe '#whose_turn' do
    it "keeps track of whose turn it is" do
      #set turn to player 2
      expect(poker.whose_turn).to eq("@player2")
    end
  end

end
