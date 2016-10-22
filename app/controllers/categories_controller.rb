class CategoriesController < ApplicationController

  def index
    @categories = Category.all

    # Hide and render signup forms
    @user = User.new
  end
end
