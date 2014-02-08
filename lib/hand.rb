require 'deck'

HAND_VALUE_NAMES = {

  0  => "high card",
  1 => "one pair",
  2 => "two pair",
  3 => "three of a kind",
  4 => "straight",
  5 => "flush",
  6 => "full house",
  7 => "four of a kind",
  8 => "straight flush",
  9 => "royal flush motherfucker"
}


class Hand
  attr_accessor :cards

  def initialize(deck)
    @deck = deck
    @cards = []
    5.times do
      @cards << @deck.deck.shuffle.pop
    end
  end

  def hand_value
    HAND_VALUE_NAMES[self.hand_checker]
  end

  def flush?
    @cards.all? { |card| card.suit == @cards.first.suit }
  end

  def straight?
    @cards.sort_by {|card| card.value}.each_cons(2).all? do |card1, card2|
      card2.value == card1.value + 1
    end
  end

  def hand_checker
    pairs = []
    trips = []
    quads = []
    high_card = 0
    self.card_histogram.each do |key, value|
      case value
      when 4
        quads << key
      when 3
        trips << key
      when 2
        pairs << key
      else
        high_card = key if key > high_card
      end
    end
    parse_card_counts(pairs, trips, quads)
  end

  def card_histogram
    card_nums = Hash.new(0)

    @cards.each do |card|
      card_nums[card.value] += 1
    end

    card_nums
  end


  def parse_card_counts(pairs, trips, quads)

    return 8 if self.flush? && self.straight?
    return 7 unless quads.empty? #four of a kind
    return 6 if pairs.count == 1 && trips.count == 1
    return 5 if self.flush?
    return 4 if self.straight?
    return 3 unless trips.empty?
    return 2 if pairs.count == 2
    return 1 if pairs.count == 1
    return 0

  end
end

#
#
# count = 0
# loop do
#   h = Hand.new(Deck.new)
#   # p h.cards
#
#   h.hand_checker
#   if h.hand_checker == 0
#     p h.hand_value
#     puts count
#     return
#   end
#   count += 1
# end