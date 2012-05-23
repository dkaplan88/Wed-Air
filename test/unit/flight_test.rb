require 'test_helper'

class FlightTest < ActiveSupport::TestCase
   test "distance flight" do
      m = Flight.new(departure_airport_code: "ORD", arrival_airport_code: "SEA")
      m.calculate
       assert_equal 1721, m.distance
   end
   
   test "Save Distance" do
     m = Flight.create(departure_airport_code: "ORD", arrival_airport_code: "SEA")
     assert_equal 1721, m.distance
   end
end
