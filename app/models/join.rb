class Join < ActiveRecord::Base
  attr_accessible :party_id, :user_id
  belongs_to :party
  belongs_to :user
end
