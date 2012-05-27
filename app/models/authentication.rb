class Authentication < ActiveRecord::Base
  attr_accessible :user_id, :provider, :uid, :screen_name, :access_token, :access_secret, :bio, :image_url, :web_url, :last_tid

  belongs_to :user
end
