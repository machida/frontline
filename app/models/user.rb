class User < ActiveRecord::Base
  attr_accessible :id, :image, :remove_image, :name, :email, :password, :remember_me, :password_confirmation

#  has_many :authentications
  has_many :parties
  has_many :joins
  has_many :invited_parties, :through => :joins, :source => :party
  has_many :tasks
  has_many :comments

  validates :name, :presence => true
  validates :password, :presence => true, :on => :create
#  validates :uid, :uniqueness => {:scope => :provider}

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :image, ImageUploader

  protected
  def password_required?
    false
  end
end

# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  name                   :string(255)
#  image                  :string(255)
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#

