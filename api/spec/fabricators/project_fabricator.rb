Fabricator(:project) do
  title          "MyString"
  issue_area     { Project.issue_areas.keys.sample }
  location_city  "MyString"
  location_state { Project.location_states.keys.sample }
  status         { Project.statuses.keys.sample }
  homepage       "MyString"
  description    { Faker::Markdown.sandwich(6, 3) }
end
