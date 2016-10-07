class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    # layout '_header'
  end

  def show
    @category = Category.find(params[:id])
    # @questions = @category.get_questions
    # render 'questions/index'
  end
end
