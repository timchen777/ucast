class Category < ActiveRecord::Base
   has_many :connections
   has_many :posts, through: :connections
   has_many :post1s
end
