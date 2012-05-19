class Party < ActiveRecord::Base
  attr_accessible :description, :name, :user_id, :member_tokens

  has_many :joins
  has_many :members, :through => :joins, :source => :user
  belongs_to :user

  attr_reader :member_tokens

  def member_tokens=(ids)
    self.member_ids = ids.split(",")
  end
end
