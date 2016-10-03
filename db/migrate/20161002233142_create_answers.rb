class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :up_votes, null: false, default: 0
      t.integer :down_votes, null: false, default: 0
      t.references :user, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
