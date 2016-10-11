class AnswersController < ApplicationController
  before_action :authorize, except: [:index]

  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    @answer.user_id = current_user.id

    respond_to do |format|
      if @answer.save
        format.js
      else
        @message = @answer.errors.full_messages
        format.js { render 'error.js.erb' }
      end
    end
  end

  def update
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
  end

  def upvote
    @answer = Answer.find(params[:id])
    @answer.upvote_by current_user
  end

  def downvote
    @answer = Answer.find(params[:id])
    @answer.downvote_by current_user
  end

  private
    def answer_params
      params.require(:answer).permit(:title, :content)
    end
end
