class User < ActiveRecord::Base
  attr_accessible :email, :first, :last, :miles, 
                  :password, :password_confirmation
  
  has_secure_password
  has_many :reservations 
  has_many :flights, :through => :reservations
end
