class User < ActiveRecord::Base
   has_secure_password validation: false
   has_many :post1s   
   has_many :comments   
end
