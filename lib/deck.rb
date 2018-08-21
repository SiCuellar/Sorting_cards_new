require './lib/cards'
require './lib/guess'

class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort
    value_rank = {
      "2" => 1,
      "3" => 2,
      "4" => 3,
      "5" => 4,
      "6" => 5,
      "7" => 6,
      "8" => 7,
      "9" => 8,
      "10" => 9,
      "Jack" => 10,
      "Queen" => 11,
      "King" => 12,
      "Ace" => 13,
      "Clubs" => 0.1,
      "Diamonds" => 0.2,
      "Hearts" => 0.3,
      "Spades" => 0.4
    }
      swapped = true
      while swapped do
      swapped = false
        (count - 1).times do |card|
          card_a = value_rank[@cards[card].value] + value_rank[@cards[card].suit]
          card_b = value_rank[@cards[card+1].value] + value_rank[@cards[card+1].suit]
          if card_a > card_b
            @cards[card], @cards[card+1] = @cards[card+1], @cards[card]
            swapped = true
          end
        end
      end
      @cards
  end
end
