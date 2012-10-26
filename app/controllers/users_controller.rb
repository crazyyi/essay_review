class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Essay Review Playground!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
