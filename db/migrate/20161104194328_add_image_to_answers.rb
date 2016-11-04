class AddImageToAnswers < ActiveRecord::Migration
  def change
    add_attachment :answers, :avatar
  end
end
