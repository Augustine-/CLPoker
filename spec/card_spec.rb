require 'rspec'
require 'card'


describe Card do
  subject(:card) { Card.new("A", :spades) }


  describe "#to_s" do
    it "displays the name of the card" do
      expect(card.to_s).to eq("A of spades")
    end
  end

  describe "#value" do
    it "gives value of card" do
      expect(card.value).to eq(14)
    end
  end
end