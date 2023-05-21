defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 16 cards" do
    deck_size = length(Cards.create_deck)
    assert deck_size == 16
  end

  test "shuffling a deck changes the order" do
    deck = Cards.create_deck
    shuffled_deck = Cards.shuffle(deck)
    refute deck == shuffled_deck
  end
end
