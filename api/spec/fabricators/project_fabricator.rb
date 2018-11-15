Fabricator(:project) do
  user              nil
  company           { Faker::Company.name }
  stage             0

  name_first        { Faker::Name.first_name }
  name_last         { Faker::Name.last_name }
  email             { Faker::Internet.email }
  phone             { Faker::PhoneNumber.phone_number }

  address_street_1  { Faker::Address.street_address }
  address_street_2  { Faker::Address.secondary_address }
  address_city      { Faker::Address.city }
  address_state     0
  address_zipcode   { Faker::Address.zip_code }

  company_kind      0
  mission_statement { Faker::Hobbit.quote }
  who_you_are       { Faker::Company.bs }
  who_you_help      { Faker::Company.profession }
  what_you_do       { Faker::Company.industry }

  current_services  "MyText"
  update_frequency  0
  domain_registered false
end
