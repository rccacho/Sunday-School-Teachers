class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
      flash[:success] = "Welcome back, #{user.first_name}!"
    else
      flash.now[:danger] = 'Invalid email/password combination' # Displays flash messages on rendered pages
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end