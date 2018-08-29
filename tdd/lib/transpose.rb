def my_transpose(matrix)
  result = Array.new(matrix.length) { [] }
  matrix.each.with_index do |row, i|
    row.each.with_index do |col, j|
      result[j] << col
    end
  end
  result
end