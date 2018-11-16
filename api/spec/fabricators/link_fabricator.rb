Fabricator(:link) do
  project nil
  route   { Faker::Internet.url }
  group   { Link.groups.keys.sample }
end
