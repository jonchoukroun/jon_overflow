class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    redirect_to question_path(@question)

  end

  def up_vote
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.increment!(:up_votes)

    redirect_to @question
  end

  def down_vote
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.increment!(:down_votes, by = -1)

    redirect_to @question
  end

  private
    def answer_params
      params.require(:answer).permit(:title, :content)
    end
end
