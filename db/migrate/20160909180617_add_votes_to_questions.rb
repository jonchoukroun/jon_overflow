class AddVotesToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :up_votes, :integer
    add_column :questions, :down_votes, :integer
  end
end
