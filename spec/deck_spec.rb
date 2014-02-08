require 'rspec'
require 'deck'


describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "creates a new deck of 52 cards" do
      expect(deck.deck.count).to eq(52)
    end

    it "does not have any duplicate cards" do
      expect(deck.deck.uniq.count).to eq(52)
    end
  end
end