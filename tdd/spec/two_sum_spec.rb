require 'rspec'
require 'two_sum'

RSpec.describe "Array" do
  describe "#two_sum" do
    let (:test) {[-1,0,2,-2,1]}
    subject(:arr) {test.two_sum}
    it "returns an array" do
      expect(arr.class).to be(Array)
    end
    
    it "sums to zero" do
      expect(test[arr[0][0]] + test[arr[0][1]]).to eq(0)
    end
    
    it "returns smaller first elements first" do
      expect(arr[0][0] < arr[1][0]).to be(true)
    end
    
    let(:arr2) { [-1,2,1,3,1].two_sum }
    it "returns smaller second elements first" do
      expect(arr2[0][1] < arr2[1][1]).to be(true)
    end
    
    it "returns unique pairs" do
      no_dups = arr.none? do |sub|
        arr.include?([sub[1], sub[0]])
      end
      expect(no_dups).to be(true)
    end
    
  end
end