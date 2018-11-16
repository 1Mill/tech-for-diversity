class Link < ApplicationRecord
	belongs_to :project

	validates :route,
		:presence => true

	enum group: {
		social_media: 0,
		homepage: 0
	}
end
