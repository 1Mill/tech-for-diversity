Fabricator(:project) do
  user  nil
  name  "MyString"
  stage { Project.stages.keys.sample }
end
