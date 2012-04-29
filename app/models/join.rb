# encoding: utf-8
class Join < ActiveRecord::Base
  attr_accessible :party_id, :user_id, :state
  belongs_to :party
  belongs_to :user

  validates :party_id, :user_id, :presence => true
  validates :party_id, :uniqueness => {:scope => :user_id}

  STATE = %w(chore busy break)
end
