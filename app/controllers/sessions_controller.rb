class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
    elsif user
      p @message = ["Incorrect username/password combination."]
    elsif params[:session][:email] == ''
      p @message = ["Enter your email and password, or create a new account."]
    else
      p @message = ["This account does not exist yet. Redirecting to signup..."]
      render 'redirect.js.erb'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
