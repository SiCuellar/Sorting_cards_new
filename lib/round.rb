require './lib/guess'
require './lib/cards'
require './lib/deck'
require 'pry'

class Round
  attr_reader :deck,
              :guesses
  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
    @deck.cards.rotate!
  end
end
