class MileageCalculator
  
  CHART = { "ORD-SFO" => 1846, 
            'ORD-BOS' => 866, 
            'JFK-BOS' => 186, 
            'JFK-LAX' => 2475 
          }
  
  def initialize(departure_airport_code, arrival_airport_code)
    @departure_airport_code = departure_airport_code
    @arrival_airport_code = arrival_airport_code
  end
  
  def miles
    
  end
  
  def duration
    
  end
  
end