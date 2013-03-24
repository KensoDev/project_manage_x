require 'faker'

FactoryGirl.define do
  factory :account do
    name { Faker::Company.name }
    subdomain { Faker::Name.first_name }
    user
  end
end
