def stock_picker(prices)

  # Convert prices array to a hash
  prices_and_days = prices.each_with_index do |price, day|
    prices[day] = {day: day, price: price}
  end
  
  # Set initial variables for comparison
  buy_price = prices_and_days.first[:price]
  buy_day = prices_and_days.first[:day]
  sell_price = prices_and_days.last[:price]
  sell_day = prices_and_days.last[:day]

  # Find best buy and sale prices. Sell day must be after buy day.
  prices_and_days.each do |this|
    if this[:price] < buy_price && this[:day] < sell_day
      buy_price = this[:price]
      buy_day = this[:day]
    elsif this[:price] > sell_price && this[:day] > buy_day
      sell_price = this[:price]
      sell_day = this[:day]
    end
  end

  # Return the results as an array.
  results = [buy_day, sell_day]
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker(prices)
