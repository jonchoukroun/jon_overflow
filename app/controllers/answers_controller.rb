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
    @downvoted = current_user.voted_down_on? @answer
    @answer.upvote_by current_user 

    if @answer.vote_registered?
      render 'upvote.js.erb'
    else
      @increment = false
      render 'undo_vote.js.erb'
    end
  end

  def downvote
    @answer = Answer.find(params[:id])
    @upvoted = current_user.voted_up_on? @answer
    @answer.downvote_by current_user

    if @answer.vote_registered?
      render 'downvote.js.erb'
    else
      @increment = true
      render 'undo_vote.js.erb'
    end
  end

  private
    def answer_params
      params.require(:answer).permit(:title, :content)
    end
end
