require "minitest/emoji"
require "minitest/autorun"
require "./lib/cards"


class CardsTest < Minitest::Test

  def test_it_exist
    card = Card.new("Ace","Spades")

    assert_instance_of Card, card
  end

  def test_it_has_attributes
    card = Card.new("Ace","Spades")

    assert_equal "Ace", card.value
    assert_equal "Spades", card.suit
  end
end
