class Array
  def two_sum
    result = []
    for i in 0...self.length do
      for j in (i+1)...self.length do
        result << [i,j] if self[i] + self[j] == 0
      end
    end
    result
  end
end