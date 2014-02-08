require 'rspec'
require 'hand'


describe Hand do
  subject(:hand) { Hand.new(Deck.new) }

  describe '#initialize' do
    it "deals 5 cards" do
      expect(hand.cards.count).to eq(5)
    end

    it "deals Card objects" do
      expect(hand.cards.first.class).to eq(Card)
    end
  end


  describe '#hand_checker' do
    it "returns the correct hand value of a flush" do

      hand.cards = [
        Card.new("A", :spades),
        Card.new("4", :spades),
        Card.new("5", :spades),
        Card.new("9", :spades),
        Card.new("Q", :spades)]

        expect(hand.hand_checker).to eq(5)
    end
  end

  describe '#hand_checker' do
    it "returns the correct hand value of a straight" do

      hand.cards = [
        Card.new("2", :spades),
        Card.new("4", :clubs),
        Card.new("5", :spades),
        Card.new("3", :spades),
        Card.new("6", :spades)]

        expect(hand.hand_checker).to eq(4)
    end
  end

  describe '#hand_checker' do
    it "returns full house instead of trip or pair" do

      hand.cards = [
        Card.new("2", :spades),
        Card.new("2", :clubs),
        Card.new("2", :hearts),
        Card.new("6", :clubs),
        Card.new("6", :spades)]

        expect(hand.hand_checker).to eq(6)
    end
  end
end