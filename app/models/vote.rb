class Vote < ActiveRecord::Base
  # 關聯的設定可以給別名，foreign key 和相關連的 model 需要自己設定  
  belongs_to :creator, foreign_key: :user_id, class_name: "User"
  belongs_to :voteable, polymorphic: true
  #belongs_to :post1
  validates_uniqueness_of :creator, scope: [:voteable_type, :voteable_id]
end