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

  def record_guess(params)
    @guesses << Guess.new(params, current_card)
    @deck.cards.rotate!
  end

  def number_correct
    number_correct = 0
    @guesses.map do |guess|
      if guess.correct? == true
        number_correct += 1
      end
    end
    number_correct
  end

end
