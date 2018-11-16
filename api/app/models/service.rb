class Service < ApplicationRecord
	belongs_to :project

	validates :name,
		:presence => true

	enum name: {
		logo: 0,
		website_redesign: 1,
		translating: 2,
		social_media: 3
	}
end
