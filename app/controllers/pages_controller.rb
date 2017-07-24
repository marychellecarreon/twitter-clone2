class PagesController < ApplicationController

  def Home
    @posts = Post.all
    @newPost = Post.new
  end

  def Profile
  @posts = Post.all
  @newPost = Post.new
  end

end
