class Party < ActiveRecord::Base
  attr_accessible :description, :end_at, :name, :user_id, :member_tokens

  has_many :joins
  has_many :members, :through => :joins, :source => :user
  belongs_to :user

  attr_reader :member_tokens

  validates :name, :end_at, :presence => true

  def member_tokens=(ids)
    self.member_ids = ids.split(",")
  end
end
