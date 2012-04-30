# encoding: utf-8
class Join < ActiveRecord::Base
  attr_accessible :party_id, :user_id, :state
  belongs_to :party
  belongs_to :user

  validates :party_id, :user_id, :presence => true
  validates :party_id, :uniqueness => {:scope => :user_id}

  after_create :set_default_params

  STATE = [
    ["chore", "雑用"],
    ["busy", "集中"],
    ["break", "休憩中"]
  ]

  def set_default_params
    self.state = "chore"
  end
end
