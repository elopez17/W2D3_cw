def stock_picker(prices)
  pairs = []
  for i in 0...(prices.length-1) do
    for j in (i+1)...prices.length do
      pairs << [(prices[j]-prices[i]),i,j]
    end
  end
  pairs.sort_by!{|el| el.first }
  best = pairs.pop.drop(1)
  best
end