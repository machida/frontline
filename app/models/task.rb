class Task < ActiveRecord::Base
  attr_accessible :content, :end_time, :start_time, :state, :user_id
  belongs_to :user
  belongs_to :party

  def self.current(party_id)
    where(state: "current", party_id: party_id)
  end

  def self.backlog(party_id)
    where(state: "backlog", party_id: party_id).order("created_at desc")
  end

  def self.done(party_id)
    where(state: "done", party_id: party_id).order("created_at desc")
  end
end
