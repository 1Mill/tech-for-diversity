Fabricator(:user) do
	email { Faker::Internet.email }
	password 'password'

	projects(count: (2..7).to_a.sample) { Fabricate.build(:project, :user => nil)}
end
