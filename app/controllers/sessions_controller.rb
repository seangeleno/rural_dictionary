class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:login][:email])
    if @user && @user.authenticate(params[:login][:password])
      #set a cookie so our browser knows we are who we say we are
      session[:user_id] = @user.id.to_s
      #we can redirect wherever we want if they log in correctly
      redirect_to users_path
    else
      #give em another shot at logging in
      redirect_to login_path
  end

  def destroy
    session.delete(:user_id) = nil
    redirect_to login_path
  end
end
