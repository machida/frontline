class Party < ActiveRecord::Base
  attr_accessible :description, :end_at, :name, :user_id, :user_tokens

  has_many :joins
  has_many :users, :through => :joins

  attr_reader :user_tokens

  validates :name, :end_at, :presence => true

  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end
end
