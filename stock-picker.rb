puts "enter stock prices separated by commas"
stocks = gets.chomp.split(',')
stocks.map! {|stock| stock.to_i}
i = 0
difference = 0
max_difference = 0
max_difference_indexes = []
while i < (stocks.length - 1) do
    j = i + 1
    while j < (stocks.length) do
        difference = (stocks[i]-stocks[j])
        if difference < max_difference
            max_difference = difference
            max_difference_indexes = [i,j]
        end
        j += 1
    end
    i += 1
end
p max_difference_indexes