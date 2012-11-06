class PostsController < ApplicationController
  def new
    if signed_in?
      @user = User.find(params[:user_id])
      @post = @user.posts.new
    else
      redirect_to signin_url
    end
  end

  def create
    if signed_in?
      @user = User.find(params[:user_id])
      @post = @user.posts.build(title: params[:title], content: params[:content])
      redirect_to @post
    else
      redirect_to signin_url
    end
  end

end
