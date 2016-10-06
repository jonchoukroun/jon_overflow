class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.create(user_params)

    respond_to do |format|
      if @user.save
        # sessions[:current_user] = @user
        format.js {render js: "window.location.href = ('#{user_path(@user)}');"}
      else
        @message = @user.errors.full_messages
        format.js {render 'error.js.erb'}
      end
    end
  end

  def update
  end
  
  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
