require_relative "card.rb"

class Deck
  attr_reader :cards
  SUITS = ["♠","♥","♦","♣"].freeze
  
  def initialize
    @cards = Array.new(52){Card.new(0,"♠")}
  end
  
  def shuffle!
    @cards.shuffle!
  end
  
  def deal_card(num = 1)
    deal = @cards.take(num)
    @cards = @cards.drop(num)
    deal
  end
end