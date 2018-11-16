Fabricator(:language) do
  project nil
  name    { Language.names.keys.sample }
end
