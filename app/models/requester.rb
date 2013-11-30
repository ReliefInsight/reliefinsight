class Requester < ActiveRecord::Base
  has_many :requester_product_relations
  has_many :products, through: :requester_product_relations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
