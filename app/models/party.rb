# == Schema Information
#
# Table name: parties
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  user_id     :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Party < ActiveRecord::Base
  attr_accessible :name, :description, :user_id, :member_tokens

  belongs_to :user
  has_many :joins
  has_many :members, :through => :joins, :source => :user

  attr_reader :member_tokens

  def member_tokens=(ids)
    self.member_ids = ids.split(",")
  end
end
