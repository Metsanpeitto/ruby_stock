########################################################################
########################################################################
#
#            Implement a method #stock_picker that takes in an 
#            array of stock prices, one for each hypothetical day. 
#            It should return a pair of days representing the 
#            best day to buy and the best day to sell. Days 
#            start at 0.
#                   
#             > stock_picker([17,3,6,9,15,8,6,1,10])
#             => [1,4]  # for a profit of $15 - $3 == $12
#           Quick Tips:
#                   
#           You need to buy before you can sell
#           Pay attention to edge cases like when the 
#            lowest day is the last day or the highest
#            day is the first day.
#
########################################################################
########################################################################


def stock_picker(arr)
    days = []
    # Store the length of the array
    last_index = arr.size       
    max_profit = 0
    week_data = []
    # Iterate over the array
    count_0 = 0
    # Iterate over the array with the variable 'index'
    for index in (0...last_index)
      # Iterate over the second array from an index 
      # more than in the last one   
      for index2 in (count_0 + 1...last_index)
        # If the value more right on the array is bigger
        # that means there is a profit.
        # Store that profit and the indexes in a Hash         
        if arr[index] < arr[index2]
           profit = arr[index2] - arr[index]
           day_data = {first_index: index,
                       second_index: index2,
                       profit: profit
                      }
           # Store the hash with the information
           # of that day in an array            
           week_data.push(day_data)           
        end    
      end
      # Increment the counter before loop again
      count_0 = count_0 + 1
    end
   
    # Now all the days with any profit are stored in 'week_data'
    # Iterate over those days looking for the larger profit
    week_data.each do |d_d| 
      # If the profit in that day was larger than the last
      # profit stored in 'max_profit', then replace max_profit
      # with that larger value       
      if d_d[:profit] > max_profit
         max_profit =  d_d[:profit]
         # Store the day indexes in an array called 'days'
         days = [d_d[:first_index],d_d[:second_index]]
      end     
    end 
    # Return the final result
    puts "Result : #{days}" 
    return days  
end

stock_picker([17,3,6,9,15,8,6,1,10])

