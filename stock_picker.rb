def stock_picker(array)
  i=0
  buy_day, sell_day, profit = 0, 0, 0
  while i < array.size
    k = i+1
    while k < array.size
      if array[k]-array[i] > profit
        buy_day,sell_day = i,k
        profit = array[k]-array[i]
      end
      k+=1
    end
    i +=1
  end
  p [buy_day,sell_day]
end
stock_picker([17,3,6,9,15,8,6,3,10])
