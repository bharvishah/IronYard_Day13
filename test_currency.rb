require 'minitest/autorun'
require 'minitest/pride'
require './currencyconverter'


class TestCurrency < MiniTest::Test

  def test_dollar_converts_to_euro
    assert_equal 11.85 , CurrencyConverter.new(15,:dollar,:euro).get_conversion
  end

  def test_dollar_converts_to_yen
    assert_equal 1622.1 , CurrencyConverter.new(15,:dollar,:yen).get_conversion
  end

  def test_dollar_converts_to_pound
    assert_equal 9.30 , CurrencyConverter.new(15,:dollar,:pound).get_conversion
  end

  def test_dollar_converts_to_gold_ounce
    assert_equal 0.01 , CurrencyConverter.new(15,:dollar,:gold).get_conversion
  end

end
