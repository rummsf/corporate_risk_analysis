class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      return
    else
      redirect_to new_user_path
    end
  end

  def show
    authorized_for(params[:id])
    @user = User.find(params[:id])
  end

  def index
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
