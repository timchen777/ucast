class Post1 < ActiveRecord::Base
   belongs_to :category
   belongs_to :user
   has_many :comments 
   has_many :votes, as: :voteable

  def up_votes
    self.votes.where(vote: true).length
  end

  def down_votes
    self.votes.where(vote: false).length
  end

  def total_votes
    up_votes - down_votes
  end   
  
  def self.search(keyword)
    post1s = order(:title)
    post1s = post1s.where("title like ?", "%#{keyword}%") if keyword.present?
    post1s
  end
end
