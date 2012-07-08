# == Schema Information
#
# Table name: tasks
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  party_id    :integer
#  content     :text
#  state       :string(255)
#  help        :boolean
#  started_at  :datetime
#  finished_at :datetime
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Task < ActiveRecord::Base
  attr_accessible :user_id, :party_id, :content, :state, :help, :started_at, :finished_at

  belongs_to :user
  belongs_to :party
  has_many :comments

  validates :user_id, :content, :presence => true

  STATE = %w(current backlog done)

  def start
    unless Task.current(party_id).exists?
      self.state = "current"
      self.started_at = Time.now
      save!
    end
  end

  def hold
    if state == "current"
      self.state = "backlog"
      save!
    end
  end

  def finish
    if state == "current"
      self.state = "done"
      save!
    end
  end

  def redo
    if state == "done"
      self.state = "backlog"
      save!
    end
  end

  def self.current(party_id)
    where(state: "current", party_id: party_id)
  end

  def self.backlog(party_id)
    where(state: "backlog", party_id: party_id).order("updated_at desc")
  end

  def self.done(party_id)
    where(state: "done", party_id: party_id).order("updated_at desc")
  end
end
