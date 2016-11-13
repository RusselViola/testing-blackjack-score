require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
  end
numbers = ["2", "3", "4", "5", "6", "7", "8", "9", "10"]
  def calculate_hand
    # Your code here after writing tests
    # Think about what this method needs to do
    total_score = 0
    cards.each do |card|
      card.slice!(-1)
      if card == "J" || card == "K" || card == "Q"
        total_score += 10
      elsif numbers.include?(card)
        total_score += card.to_i
      else
        if total_score <= 10
          total_score += 11
        else
          total_score += 1
        end
      end
    end
      #
      # if total_score <= 21
      #   true
      # else
      #   false
      # end
  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
require 'pry'
binding.pry
