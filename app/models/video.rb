class Video < ActiveRecord::Base
  def next
    # Video.find(id+1)
    Video.where("id > ?",id).first
  end
  def prev
    # Video.find(id-1)
    Video.where("id < ?",id).last
  end    
end
