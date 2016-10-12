class AnswersController < ApplicationController
  before_action :authorize, except: [:index]

  def new
    @answer = Answer.new
    render 'new.js.erb'
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    @answer.user_id = current_user.id

    if @answer.save
      render 'create.js.erb'
    else
      @message = @answer.errors.full_messages
      render 'error.js.erb'
    end
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
