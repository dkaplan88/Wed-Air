if Rails.env.development?
  
  Time.zone = "America/Chicago"
  
  Flight.destroy_all
  
  codes = ['ORD', 'JFK', 'SEA', 'LAX', 'BOS', 'SFO']
  
  100.times do 
    departure_code, arrival_code = codes.sample(2)
    departure_time = rand(0..19990000000)
    flight_number = rand(100..999)

    # Now we can generate a new flight using the random departure time
    # Maybe something like the code below:
    #
      f = Flight.new :number => flight_number,
                  :departure_airport_code => departure_code, 
                  :arrival_airport_code => arrival_code, 
                  :departs_at => (Date.today + departure_time.hours + departure_time.minutes),
                  :seats => rand(0..60)
    f.calculate
    f.arrives 
    f.save
  end
  
  puts "#{Flight.count} flights created."
  
  
end