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
      # respond_to do |format|
      unless current_user
        @message = [ "You must be logged in to ask a new question." ]
        render js: "window.location.href = ('#{login_path}');"
      end
      # end
    end
end
