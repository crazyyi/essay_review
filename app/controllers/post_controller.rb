class PostController < ApplicationController
  before_filter :signed_in_user, only: [:create, :edit, :destroy]

  def edit
  end

  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
