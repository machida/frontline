# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "user1"
    image "user1.png"
    email "user1@example.com"
    password "testpass"
  end
end
