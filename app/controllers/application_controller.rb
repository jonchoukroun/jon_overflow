class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  private
    def require_login
      sessions[:user_id]
    end

    def authorize
      unless current_user
        @message = [ "You must be logged in to do that." ]
        render 'sessions/force_login.js.erb'
      end
    end
end
