require 'rspec'
require 'deck'

RSpec.describe "Deck class" do
  subject(:deck) {Deck.new}
  it "has array of 52 cards" do
    expect(deck.cards.class).to be (Array)
    expect(deck.cards.length).to be (52)
    expect(deck.cards).to all (be_a(Card))
  end
  
  it "can shuffle" do
    expect(deck.cards).to receive(:shuffle!)
    deck.shuffle!
  end
  
  it "can deal a card" do
    deck.deal_card
    expect(deck.cards.length).to eq(51)
  end
  
  it "can deal multiple cards" do
    deck.deal_card(5)
    expect(deck.cards.length).to eq(47)
  end
end