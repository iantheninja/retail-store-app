require('sinatra')
require('./lib/trade')
require "pry"

get('/') do
  erb(:index)
end

get('/result') do
  item_id = params.fetch("item-id")
  new_query = Trade.new
  binding.pry
  @result = new_query.domestic_trade(item_id)
  binding.pry
  erb(:result)
end
