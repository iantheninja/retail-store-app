require "csv"
require "pry"

class Trade

  def domestic_trade(itemId)
    transactions = CSV.read('TRANS.csv')
    total_sales = 0
    total_location = {}

    transactions.each do |row|
      amount = row[2][0,4].to_f
      location = row[0]
      if row[1] == itemId
        binding.pry
        total_sales += amount
        if !total_location[location]
          total_location[location] = amount
        else
          total_location[location] += amount
        end
      end
    end
    max = total_location.max_by{|key, value| value}[0]
    return {:total_KSH => total_sales.round(2), :largest => max}

  end


  # define_singleton_method(:domestic_trade) do |itemId|
  #   transactions = CSV.read('TRANS.csv')
  #   total_sales = 0
  #   total_location = {}
  #
  #   transactions.each do |row|
  #     amount = row[2][0,4].to_f
  #     location = row[0]
  #     if row[1] == itemId
  #       total_sales += amount
  #       if !total_location[location]
  #         total_location[location] = amount
  #       else
  #         total_location[location] += amount
  #       end
  #     end
  #   end
  #   max = total_location.max_by{|key, value| value}[0]
  #   return {:total_KSH => total_sales.round(2), :largest => max}
  # end
end
