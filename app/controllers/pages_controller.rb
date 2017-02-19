class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "NTU Ruby 277 Project :留言板 "
  end

  def home
    @posts = Post.all
    @categories = Category.all
    @connections = Connection.all
    @comments = Comment.all
  end
  
  def error
  end

end
