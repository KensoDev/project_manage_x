require 'faker'

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "foobar12345"
    password_confirmation "foobar12345"
  end
end
