class Serach < ActiveRecord::Base
  def post1s
    @post1s ||= find_post1s
  end
  
private
  def find_post1s
    post1s = Post1.order(:title)
    post1s = post1s.where("title like ?", "%#{keyword}%") if keyword.present?
    post1s
  end
end
   

