require './lib/cards'
require './lib/guess'

class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def count
    cards.count
  end
end
