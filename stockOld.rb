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
    # Find the lowest value more at the beginning of the array
    # and store its value and index in a hash  
    last_index = arr.size   
    last_index = last_index -1
  
    index_small = nil
    index_large = nil
    stock_small = nil
    stock_large = nil
    max_profit = nil
    week_data = []
    # Iterate over the array
    count_0 = 0
    arr.each do |n|  
      puts "N = #{n}"
        # From the present idex 'n' iterate forward  
        count_1 = count_0 + 1     
        arr[count_0].upto arr[last_index] do |i|          
          # Compare the new stocks and select the largest   
          if arr[i]   

            #puts "N= #{n} and arr[i]= #{arr[i]}"              
             if n < arr[i]    
                puts "arr[i] = #{arr[i]}"  
            
                profit =  arr[i]  - n
                day_data = {
                            first_day: count_0,
                            second_day: count_1,
                            profit_day: profit
                           }
                          
                week_data.push(day_data)           
             end 
          end   
          count_1 = count_1 + 1
        end 
        count_0 = count_0 + 1
    end
   
    week_data.each do |d_d| 
      
      if max_profit != nil
          max_profit = max_profit  
      else 
          max_profit = d_d[:profit_day]
      end

      if d_d[:profit_day] > max_profit
        days = [d_d[:first_day],d_d[:second_day]]
      end  
    end  
    puts days
    return(days)
end

stock_picker([17,3,6,9,15,8,6,1,10])

