# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_each(&:destroy)

2.times do
	Fabricate(:user).save
end

Fabricate(:user, :email => 'bis@html.erb', :password => 'password', :role=>:business)
Fabricate(:user, :email => 'admin@html.erb', :password => 'password', :role=>:admin) do
	projects(count: 0)
end
