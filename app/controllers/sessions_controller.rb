class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
    elsif user
      @message = ["Incorrect username/password combination."]
    elsif params[:session][:email] == ''
      @message = ["Enter your email and password, or create a new account."]
    else
      @message = ["This account does not exist yet. Create an account instead..."]
    end
  end

  def destroy
    log_out
  end
end
