class SessionsController < ApplicationController
  def new
  end

def create
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password_digest])
      sessions[:user_id] = @user.id
      redirect_to '/welcome'
  else
      redirect_to '/login'
  end
end

  def login
  end

  def welcome
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/welcome', notice: "Logged out!"
  end

end
