class Language < ApplicationRecord
	belongs_to :project

	validates :name,
		:presence => true

	enum name: {
		chinese: 0,
		spanish: 1,
		english: 2,
		hindi: 3,
		arabic: 4,
		portuguese: 5,
		bengali: 6,
		russian: 7,
		japanese: 8,
		punjabi: 9
	}
end
