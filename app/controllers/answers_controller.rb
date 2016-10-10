class AnswersController < ApplicationController
  before_action :authorize, except: [:index]

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
  end

  private
    def answer_params
      params.require(:answer).permit(:title, :content)
    end
end
