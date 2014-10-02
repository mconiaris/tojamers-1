class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    a = User.create(user_params)
    redirect_to user_path(a)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:password, :name, :email, :phone, :company)
  end

end
