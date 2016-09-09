class AddVotesToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :up_votes, :integer, null: false, default: 0
    add_column :questions, :down_votes, :integer, null: false, default: 0
  end
end
