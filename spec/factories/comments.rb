# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    task_id 1
    user_id 1
    content "My Comment"
  end
end
