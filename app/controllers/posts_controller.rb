class PostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def destroy
    @post.destroy
    redirect_to root_url
  end

  def new
    if signed_in?
      @post = Post.new
    else
      redirect_to signin_url
    end
  end

  def create
    if signed_in?
      @post = current_user.posts.build(title: params[:title], content: params[:content])
      if @post.save
        flash[:success] = "Post created!"
        render current_user
      else
        redirect_to root_url
      end
    else
      redirect_to signin_url
    end
  end

  private

    def correct_user
      @post = current_user.posts.find_by_id(params[:id])
      redirect_to root_url if @post.nil?
    end

end
