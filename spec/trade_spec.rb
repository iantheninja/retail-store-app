require('rspec')
require('trade')

describe 'Trade' do
  it 'returns the total number of sales of an item across the coutry' do
    test_arr = [["Nairobi","DM1210","7000 KSH"],
    ["Nairobi","DM1182","1968 KSH"],
    ["Naivasha","DM1182","5858 KSH"],
    ["Mombasa","DM1210","6876 KSH"], ["Nakuru","DM1182","5464 KSH"]]
    expect(domestic_trade()).to(eq("Beowulf"))
  end
end
