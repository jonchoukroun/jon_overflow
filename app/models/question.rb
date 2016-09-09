class Question < ActiveRecord::Base
	has_many :answers

	def count_votes
		self.up_votes + self.down_votes
	end
end