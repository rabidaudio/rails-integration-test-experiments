class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:client])
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end

  def show
    @user = User.find()
  end

end