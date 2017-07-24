class PagesController < ApplicationController

  def Home
    @posts = Post.all
    @newPost = Post.new
  end

  def Profile
  @posts = current_user.posts.find(params[:id])
  end

end
