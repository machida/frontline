# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    user_id 1
    party_id 1
    content "My Task"
    state "backlog"
    help false
    finished_at "2012-06-30 15:01:11"
  end
end
