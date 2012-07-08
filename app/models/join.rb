# encoding: utf-8

# == Schema Information
#
# Table name: joins
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  party_id    :integer
#  state       :string(255)     default("chore")
#  started_at  :datetime
#  finished_at :datetime
#  end_hour    :integer         default(0)
#  end_min     :integer         default(0)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Join < ActiveRecord::Base
  attr_accessible :user_id, :party_id, :state, :started_at, :finished_at, :end_hour, :end_min

  belongs_to :user
  belongs_to :party

  validates :user_id, :party_id, :presence => true
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
