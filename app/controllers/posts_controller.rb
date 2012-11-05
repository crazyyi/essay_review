class PostsController < ApplicationController
  def new
    if signed_in?
      @post = Post.new
    else
      redirect_to signin_url
    end
  end
end
