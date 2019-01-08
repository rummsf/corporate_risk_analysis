class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to login_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to signup_path
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

  def destroy
    @user = User.find(params[:id])
    @user.searches.destroy_all
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
