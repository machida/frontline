# encoding: utf-8
class Join < ActiveRecord::Base
  attr_accessible :party_id, :user_id, :state, :end_hour, :end_min
  belongs_to :party
  belongs_to :user

  validates :party_id, :user_id, :presence => true
  validates :party_id, :uniqueness => {:scope => :user_id}

  STATE = [
    ["chore", "雑用"],
    ["busy", "集中"],
    ["break", "休憩中"]
  ]

  def state_text
    STATE.select{|i| i[0] == self.state}[0][1]
  end
end
