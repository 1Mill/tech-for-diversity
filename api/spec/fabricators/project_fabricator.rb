Fabricator(:project) do
  user              nil
  company           "MyString"
  stage             ""

  name_first        "MyString"
  name_last         "MyString"
  email             "MyString"
  phone             "MyString"

  address_street_1  "MyString"
  address_street_2  "MyString"
  address_city      "MyString"
  address_state     ""
  address_zipcode   "MyString"

  company_kind      ""
  mission_statement "MyText"
  who_you_are       "MyText"
  who_you_help      "MyText"
  what_you_do       "MyText"

  current_services  "MyText"
  update_frequency  1
  domain_registered false
end
