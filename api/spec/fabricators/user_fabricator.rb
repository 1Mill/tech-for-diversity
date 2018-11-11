Fabricator(:user) do
	email { Faker::Internet.email }
	password 'password'

	projects(count: 2) { Fabricate.build(:project, :user => nil)}
end
