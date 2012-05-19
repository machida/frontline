class Activity < ActiveRecord::Base
  attr_accessible :content, :task_id, :user_id

  belongs_to :task
  belongs_to :user
end
