module AnswersHelper
  def form_action(answer)
    if answer.persisted?
      answer_path(answer)
    else
      question_answers_path
    end
  end

  def form_method(answer)
    if answer.persisted?
      :patch
    else
      :post
    end
  end
end
