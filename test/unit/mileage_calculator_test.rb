require 'test_helper'

class MileageCalculatorTest < ActiveSupport::TestCase
  test "the miles method returns the correct distance between ORD and SFO" do
    mc = MileageCalculator.new('ORD', 'SFO')
    x = mc.miles
    assert x == 1846
  end
  
  test "miles between ORD and BOS" do
    mc = MileageCalculator.new('ORD', 'BOS')
    x = mc.miles
    assert x == 866
  end
  
  test "miles between JFK and BOS" do
    mc = MileageCalculator.new('JFK', 'BOS')
    x = mc.miles
    assert x == 186
  end
  
  test "miles between BOS and JFK" do
    mc = MileageCalculator.new('BOS', 'JFK')
    x = mc.miles
    assert_equal 186, x
  end
  
end
