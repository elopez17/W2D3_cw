class Card
  attr_reader :value, :suit
  
  def initialize(value,suit)
    @value = value
    @suit = suit
    @face_up = false
  end
  
  def face_up?
    @face_up
  end
  
  def reveal
    @face_up = true
  end
end  