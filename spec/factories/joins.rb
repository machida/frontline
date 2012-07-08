# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :join do
    user_id 1
    party_id 1
    state "chore"
    started_at "2012-06-30 15:00:09"
    finished_at "2012-06-30 15:00:09"
    end_hour 1
    end_min 1
  end
end
