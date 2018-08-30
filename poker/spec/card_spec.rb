require 'rspec'
require 'card'

RSpec.describe "Card class" do
  subject(:card) { Card.new(0, "♠") }
  
  it "has a value, and suit" do
    expect(card.value).to be(0)
    expect(card.suit).to eq("♠")
  end
  
  it "initializes face down" do
    expect(card.face_up?).to be(false)
  end
  
  it "can be flipped" do
    card.reveal
    expect(card.face_up?).to be(true)
  end
end