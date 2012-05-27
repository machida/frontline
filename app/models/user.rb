class User < ActiveRecord::Base
  attr_accessible :id, :image, :name, :email, :password, :remember_me, :password_confirmation

  has_many :authentications
  has_many :parties
  has_many :joins
  has_many :invited_parties, :through => :joins, :source => :party
  has_many :tasks
  has_many :activities

  validates :name, :presence => true
  validates :email, :password, :presence => true, :on => :create
#  validates :uid, :uniqueness => {:scope => :provider}

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :omniauthable
end
