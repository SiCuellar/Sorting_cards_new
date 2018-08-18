require "minitest/autorun"
require "minitest/emoji"
require "./lib/guess"

class GuessTest < Minitest::Test
  def test_it_exist
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
  end

  def test_it_has_attributes
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Card, card
    assert_equal "10 of Hearts", guess.response
  end

  def test_it_can_check_if_cards_match
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal true, guess.correct?
  end

  def test_it_give_feedback
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "Correct!", guess.feedback
  end
end
