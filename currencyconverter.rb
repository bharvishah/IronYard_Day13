
class CurrencyConverter
  attr_accessor :dollar, :euro, :number

  @number = 15
  @conversions = {}

  def initialize(number,from_currency,to_currency)
    @number = number
    @from_currency = from_currency
    @to_currency = to_currency
    @conversions = {:euro => 0.79,:yen => 108.14,:pound => 0.62,:gold => 0.00082}
  end

  def get_conversion
    (@number * @conversions[@to_currency]).round(2)
  end

end

class Currency

  #c = CurrencyConverter.new(15,:dollar,:euro)
  p "15 dollars is equivalent of #{CurrencyConverter.new(15,:dollar,:euro).get_conversion} euros"

  #c = CurrencyConverter.new(15,:dollar,:yen)
  p "15 dollars is equivalent of #{CurrencyConverter.new(15,:dollar,:yen).get_conversion} yen"

  #c = CurrencyConverter.new(15,:dollar,:pound)
  p "15 dollars is equivalent of #{CurrencyConverter.new(15,:dollar,:pound).get_conversion} pound"

  #c = CurrencyConverter.new(15,:dollar,:gold)
  p "15 dollars is equivalent of #{CurrencyConverter.new(15,:dollar,:gold).get_conversion} ounce of Gold"

end
