class PostsController < ApplicationController
  def new
    if signed_in?
      @post = Post.new
    else
      redirect_to root_url
  end
end
