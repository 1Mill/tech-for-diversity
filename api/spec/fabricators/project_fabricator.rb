Fabricator(:project) do
  user

  title          { Faker::VentureBros.organization }
  issue_area     { Project.issue_areas.keys.sample }
  location_city  { Faker::HarryPotter.location }
  location_state { Project.location_states.keys.sample }
  status         { Project.statuses.keys.sample }
  homepage       "https://www.google.com/"
  description    { Faker::Markdown.sandwich(6, 3) }
end
