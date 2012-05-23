class User < ActiveRecord::Base
  attr_accessible :email, :first, :last, :miles, 
                  :password, :password_confirmation
  
  has_secure_password
  
end
