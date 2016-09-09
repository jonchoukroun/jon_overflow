class QuestionsController < ApplicationController
  def index
  	@questions = Question.all
  end

  def show
  	@question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id]) 
  end

  def create
  	@question = Question.create(question_params)

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path
  end

  def up_vote
    @question = Question.find(params[:id])
    @question.up_vote += 1
  end

  def down_vote
    @question = Question.find(params[:id])
    @question.down_vote -= 1
  end

  private
  	def question_params
  		params.require(:question).permit(:title, :content)
  	end
end
