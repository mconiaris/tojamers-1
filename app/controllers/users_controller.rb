class UsersController < ApplicationController
  -before_action :load_user, only: [:show, :edit, :destroy, :update,]
  -before_action :authenticate, :authorize

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    def create
      a = User.create(user_params)
      session[:user_id] = a.id
      redirect_to user_path(a)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :phone, :password_digest, :user_type)
    end
end
