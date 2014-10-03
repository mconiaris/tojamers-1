class SessionController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    user = user.authenticate(params[:password]) if user #one line if statement
    if user
      session[:user_id] = user.id
      redirect_to(user_path(user))
    else
      flash[:error] = "Incorrect username or password"
      redirect_to(login_path)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end

end
