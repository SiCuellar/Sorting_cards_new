require "./lib/cards"

class Guess
  attr_reader :response
  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    
  end
end
