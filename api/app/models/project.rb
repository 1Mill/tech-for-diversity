class Project < ApplicationRecord
	enum issue_area: {
		civic_infrastructure: 0,
		cultural_issues: 1,
		economy: 2,
		education: 3,
		environment: 4,
		health_care: 5,
		homelessness: 6,
		housing_policies: 7,
		no_specific_issue: 8,
		other_issue: 9,
		political_reform: 10,
		public_safety: 11,
		transportation: 12
	}

	enum location_state: {
		wa: 0
	}

	enum status: {
		ideation: 0,
		research: 1,
		design: 2,
		development: 3,
		mvp: 4,
		active: 5
	}
end
