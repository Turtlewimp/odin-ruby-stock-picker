def stock_picker(prices)
    
    diff1 = prices[1] - prices[0]
    dates = [0,1]
    prices.each_with_index do |price, index|
        #until index of price2 = index of price1
        
        for i in (index+1)...prices.length
            diff2 = prices[i] - price
            if diff2 > diff1
                diff1 = diff2 
                dates = [index, i]
            end
        end
    end

    dates

end

stocks = [17,3,6,9,15,8,6,1,10]

p stock_picker(stocks);