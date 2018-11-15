class Project < ApplicationRecord
	belongs_to :user

	validates :name,
		:presence => true

	enum stage: {
		open: 0,
		in_progress: 1,
		complete: 2
	}
end
