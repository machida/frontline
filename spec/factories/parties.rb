# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :party do
    name "My Party"
    description "My Hackason"
    user_id 1
  end
end
