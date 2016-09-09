class Answer < ActiveRecord::Base
	belongs_to :question

	def count_votes
		self.up_votes + self.down_votes
	end
end
