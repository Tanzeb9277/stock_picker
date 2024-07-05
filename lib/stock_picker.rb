def stock_picker(arr)
  highest_returm = 0
  buy_day = 0
  sell_day = 0

  arr.each_with_index do |num, index|
    tmp_arr = arr[index..]
    sell = tmp_arr.max
    curr_return = sell - num
    if curr_return > highest_returm
      highest_returm = curr_return
      buy_day = index
      sell_day = arr.index(sell)
    end

  end

  return_arr = [buy_day, sell_day]

end


stock_picker([34, 22, 45, 12, 56, 1])
