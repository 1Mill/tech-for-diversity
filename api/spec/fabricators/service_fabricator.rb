Fabricator(:service) do
  project nil
  name    { Service.names.keys.sample }
end
