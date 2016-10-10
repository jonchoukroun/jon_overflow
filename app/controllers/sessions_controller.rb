class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      respond_to do |format|
        format.js {
          render js: "window.location.href = ('#{user_path(user)}')"
        }
      end
    else
      respond_to do |format|
        if user
          @message = ["Incorrect username/password combination."]
          format.js
        else
          @message = ["This account does not exist yet."]
          format.js {
            render js: "window.location.href = ('#{signup_path}');"
          }
        end
      end
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
