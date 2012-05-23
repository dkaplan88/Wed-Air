class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport_code, :departs_at, :departure_airport_code, :distance, :number, :seats
  
  # Model CallBack (The "before_save" says before you save this class, call this method)
  # THere are multiple Model Callbacks (http://guides.rubyonrails.org/active_record_validations_callbacks.html#callback-classes)
  before_save :calculate
  
  def calculate
    m = MileageCalculator.new(self.departure_airport_code, self.arrival_airport_code)
    self.distance = m.miles
  end  
end
