require "pry"
require "./lib/cards"

class Guess
  attr_reader :response
  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    if "#{@card.value} of #{@card.suit}" == response ||
       {value: @card.value,
        suit: @card.suit} == response
      return true
    else
      return false
    end
  end

  def feedback
    if correct?
      return "Correct!"
    else
      return "Incorrect."
    end
  end
end
