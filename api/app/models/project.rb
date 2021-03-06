class Project < ApplicationRecord
	belongs_to :user
	has_many :links,
		:dependent => :destroy
	has_many :languages,
		:dependent => :destroy
	has_many :services,
		:dependent => :destroy

	enum stage: {
		open: 0,
		in_progress: 1,
		complete: 2
	}

	enum address_state: {
		wa: 0
	}

	enum company_kind: {
		resturant: 0,
		tailor: 1
	}

	enum update_frequency: {
		very_frequently: 0,
		frequently: 1,
		occasionally: 2,
		rarely: 3,
		very_rarely: 4,
		never: 5
	}
end
