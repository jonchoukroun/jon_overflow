class QuestionsController < ApplicationController
  helper QuestionsHelper

  def index
    @questions = Question.all
    @questions = @questions.sort_by { |q| q.count_votes }.reverse!

    # New question form is on index
    @question = Question.new

    # Return categories for new question dropdown menu
    @category = Category.all.map { |c| [c.name, c.id] }
    # User is temporary until sessions imlemented
    @user = User.all.map { |u| [u.name, u.id] }
  end

  def show
  	@question = Question.find(params[:id])
  end


  def edit
    @question = Question.find(params[:id]) 
  end

  def create
  	@question = Question.create(question_params)

    respond_to do |format|
      if @question.save
        flash[:notice] = "#{@question.title} saved successfully."
        format.html { redirect_to @question, notice: 'Question created successfully' }
        format.json { render json: @question, status: :created, location: @question }
        format.js
      else
        flash[:notice] = "Save failed: #{@question.errors.full_messages.join('; ')}"
        format.html { render action: 'index' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
        format.js
      end
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
    @question.increment!(:down_votes)

    redirect_to questions_path
  end

  private

  	def question_params
  		params.require(:question).permit(:title, :content, :user_id, :category_id)
  	end
end
