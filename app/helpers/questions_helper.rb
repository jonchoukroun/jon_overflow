module QuestionsHelper
  def form_action(question)
    if question.persisted?
      question_path(question)
    else
      category_questions_path
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
