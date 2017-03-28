require('rspec')
require('trade')
require 'csv'
require 'pry'

describe 'Trade' do
  it 'returns the total number of sales of an item across the country' do
    trade = Trade.new
    expect(trade.domestic_trade('DM1182')).to(eq({:total_KSH=>5437286.0, :largest=>"Mombasa"}))
  end
end
