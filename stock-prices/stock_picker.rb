def stock_picker(prices)
  
  if prices.index(prices.max) == 0
    hight = prices[1, prices.length].max
  else
    hight = prices.max
  end
  
  low =  prices[0, prices.index(hight)].min
  [prices.index(low), prices.index(hight)]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
