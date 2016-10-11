class QuestionsController < ApplicationController
  helper QuestionsHelper
  before_action :authorize, except: [:index, :show]

  def index
    @questions = sort(
      Question.where("category_id = ?", params[:category_id]), :count_answers
    )

    @category = Category.find(params[:category_id])

    # Renders new question form
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @category = Category.find_by(id: @question.category_id)

    @answers = sort(
      Answer.where("question_id = ?", @question.id), :agreement_rating
    )

    # Renders new answer form
    @answer = Answer.new
  end

  def edit
    @question = Question.find(params[:id]) 
  end

  def create
    @question = Question.create(question_params)
    @question.user_id = current_user.id

    respond_to do |format|
      if @question.save
        format.js
      else
        @message = @question.errors.full_messages
        format.js { render 'error.js.erb' }
      end
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      render 'create.js.erb'
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
  end

  private
    def question_params
      params.require(:question).permit(:title, :content, :category_id)
    end

    def sort(arr, method)
      arr.sort_by(&method).reverse
    end
end
