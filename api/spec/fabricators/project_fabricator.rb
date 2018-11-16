Fabricator(:project) do
  user              nil
  company           { Faker::Company.name }
  stage             { Project.stages.keys.sample }

  name_first        { Faker::Name.first_name }
  name_last         { Faker::Name.last_name }
  email             { Faker::Internet.email }
  phone             { Faker::PhoneNumber.phone_number }

  address_street_1  { Faker::Address.street_address }
  address_street_2  { Faker::Address.secondary_address }
  address_city      { Faker::Address.city }
  address_state     { Project.address_states.keys.sample }
  address_zipcode   { Faker::Address.zip_code }

  company_kind      { Project.company_kinds.keys.sample }
  mission_statement { Faker::Hobbit.quote }
  who_you_are       { Faker::Company.bs }
  who_you_help      { Faker::Company.profession }
  what_you_do       { Faker::Company.industry }

  current_services  { Faker::Lorem.paragraphs }
  update_frequency  { Project.update_frequencies.keys.sample }
  domain_registered { [true, false].sample }

  links(count: (0..2).to_a.sample) { Fabricate.build(:link) }
  languages(count: (0..3).to_a.sample) { Fabricate.build(:language) }
  services(count: (0..3).to_a.sample) { Fabricate.build(:service) }
end
