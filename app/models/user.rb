class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  geocoded_by :address
  after_validation :geocode

  def requester?
    type == "Requester"
  end

  def donor?
    type == "Donor"
  end
end
