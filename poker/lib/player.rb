# require_relative "hand"
class Player
  attr_accessor :hand, :pot 
  attr_reader :name, :bid
  
  def initialize(name, money)
    @hand = []
    @pot = money
    @name = name
    @bid = 0
  end
  
  def discard(discards=[])
    discards.each do |discard|
      @hand = @hand.reject { |card| card == @hand[discard] }
    end
  end
  
  def bet(amount)
    raise if amount > @pot
    @bid = amount
  end
  
end