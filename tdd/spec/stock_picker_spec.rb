require 'rspec'
require 'stock_picker'

RSpec.describe "#stock_picker" do
  subject (:days) { [10, 5, 2, 11, 8, 20] }
  let (:result) {stock_picker(days)}
  it "returns an array with two elements" do
    expect(result.class).to be(Array)
    expect(result.length).to eq(2)
  end
  
  it "sell date should be after buy date" do
    expect(result[1] > result[0]).to be(true)
  end
  
  it "should return the most profitable pair" do
    expect(days[result[1]]-days[result[0]]).to eq(18)
  end
end