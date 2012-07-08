# == Schema Information
#
# Table name: authentications
#
#  id            :integer         not null, primary key
#  user_id       :integer
#  provider      :string(255)
#  uid           :string(255)
#  screen_name   :string(255)
#  access_token  :string(255)
#  access_secret :string(255)
#  bio           :string(255)
#  image_url     :string(255)
#  web_url       :string(255)
#  last_tid      :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Authentication < ActiveRecord::Base
  attr_accessible :user_id, :provider, :uid, :screen_name, :access_token, :access_secret, :bio, :image_url, :web_url, :last_tid

  belongs_to :user
end
