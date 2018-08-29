require 'rspec'
require 'transpose'

RSpec.describe "#my_transpose" do
  let(:matrix) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ] }
  let(:result) { my_transpose(matrix) }
  
  
  it "returns an Array" do
    expect(result.class).to be(Array)
  end
  
  it "returns a new array" do
    expect(result).to_not be(matrix)
  end
  
  it "returns square arr" do
    expect(result[0].length).to eq(result.length)
  end
  
  it "transposes an aray" do
    expect(result).to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
  end
end