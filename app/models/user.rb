class User < ActiveRecord::Base
  attr_accessible :image, :name, :provider, :uid

  has_many :parties
  has_many :joins
#  has_many :invited_parties, :through => :joins
  has_many :invited_parties, :through => :joins, :source => :party
  has_many :tasks

  validates :name, :presence => true
  validates :uid, :uniqueness => {:scope => :provider}

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.image = auth["info"]["image"]
    end
  end

end
