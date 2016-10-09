module QuestionsHelper
  def get_username(question)
    User.find(question.user_id).name
  end

  def create_date(question)
  end

  def form_action(question)
    if question.persisted?
      question_path(question)
    else
      questions_path
    end
  end

  def form_method(question)
    if question.persisted?
      :patch
    else
      :post
    end
  end
end
