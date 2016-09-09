class AddVotesToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :up_votes, :integer
    add_column :answers, :down_votes, :integer
  end
end
