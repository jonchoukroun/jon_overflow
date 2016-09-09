class QuestionsController < ApplicationController
  def index
  	@questions = Question.all
  end

  def show
  	@question = Question.find(params[:id])
  end
  
  def create
  	@question = Question.find(question_params)
  end

  private
  	def question_params
  		params.require(:question).permit(:title, :content)
  	end
end
