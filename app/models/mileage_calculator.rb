class MileageCalculator
  
  CHART = { "ORD-SFO" => 1846,
            'ORD-BOS' => 866, 
            'ORD-SEA' => 1721, 
            'ORD-LAX' => 1744, 
            'ORD-JFK' => 740, 
            "BOS-LAX" => 2611, 
            "BOS-SFO" => 2704, 
            'BOS-SEA' => 2495, 
            'BOS-JFK' => 186,
            "SEA-SFO" => 679, 
            "JFK-SFO" => 2586, 
            "LAX-SFO" => 338, 
            'JFK-LAX' => 2475,
            'JFK-SEA' => 2421,
            'SEA-LAX' => 954,
          }
  
  def initialize(departure_airport_code, arrival_airport_code)
    @departure_airport_code = departure_airport_code
    @arrival_airport_code = arrival_airport_code
  end
  
  def miles
    chart_key = "#{@departure_airport_code}-#{@arrival_airport_code}"
    miles = CHART[chart_key]
    if miles.nil?
      chart_key = "#{@arrival_airport_code}-#{@departure_airport_code}"
      miles = CHART[chart_key]
    end
    return miles
  end
end