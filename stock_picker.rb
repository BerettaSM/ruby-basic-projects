def stock_picker stocks
    highest_profit_so_far = -Float::INFINITY
    day_with_lowest_stock_so_far = 0
    most_profitable_days = nil
    
    for day in 1...stocks.length do
        lowest_stock_so_far = stocks[day_with_lowest_stock_so_far]
        cur_stock = stocks[day]

        possible_profit = cur_stock - lowest_stock_so_far

        if possible_profit > highest_profit_so_far
            highest_profit_so_far = possible_profit
            most_profitable_days = day_with_lowest_stock_so_far, day
        end

        if  cur_stock < lowest_stock_so_far
            day_with_lowest_stock_so_far = day
        end
    end

    most_profitable_days
end

print stock_picker([17,3,6,9,15,8,6,1,10]) # -> [1,4]
print stock_picker([8,5,4,3,2,8,10,29,5])  # -> [4,7]
print stock_picker([7,9,14,9,15,8,6,8,15]) # -> [6,8]
