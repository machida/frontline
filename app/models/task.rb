class Task < ActiveRecord::Base
  attr_accessible :content, :end_time, :start_time, :state, :user_id
  belongs_to :user
  belongs_to :party

  scope :current, where(state: "current")
  scope :backlog, where(state: "backlog").order("created_at desc")
  scope :done, where(state: "done").order("created_at desc")
end
