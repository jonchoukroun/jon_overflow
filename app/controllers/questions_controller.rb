class QuestionsController < ApplicationController
  before_action :all_questions, only: [:index, :create]
  # respond_to :html, :js   # extracted to respond gem

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
    @question.increment!(:up_votes)

    redirect_to questions_path
  end

  def down_vote
    @question = Question.find(params[:id])
    @question.increment!(:down_votes, by = -1)

    redirect_to questions_path
  end

  private

    def all_questions
      @questions = Question.all
      @questions = @questions.sort_by { |q| q.count_votes }.reverse!
    end

  	def question_params
  		params.require(:question).permit(:title, :content, :up_votes, :down_votes)
  	end
end
