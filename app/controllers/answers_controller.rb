class AnswersController < ApplicationController
	def index
	end

	def create
		@question = Question.find(params[:question_id])
		@answer = @question.answers.create(answer_params)
		redirect_to question_path(@question)
	end

	def up_vote
		@answer = Answer.find(params[:id])
		@answer.increment!(:up_votes)

    redirect_to questions_path(@question)
  end

  def down_vote
		@answer = Answer.find(params[:id])
		@answer.increment!(:down_votes, by = -1)

		redirect_to questions_path(@question)
  end

	private
		def answer_params
			params.require(:answer).permit(:title, :content)
		end
end
