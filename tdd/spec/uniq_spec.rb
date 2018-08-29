require 'uniq'
require 'rspec'

RSpec.describe Array do
  describe "#my_uniq" do
    subject(:arr) { [1, 2, 1, 3, 3] }
    
    it "does not leave duplicates" do
      expect(arr.my_uniq).to match_array [2, 1, 3]
    end
    
    it "returns a new array" do
      expect(arr.my_uniq.class).to be(Array)
      expect(arr.my_uniq).to_not be(arr)
    end
    
    it "order of appearance" do
      expect(arr.my_uniq).to eq([1,2,3])
    end
  end
end