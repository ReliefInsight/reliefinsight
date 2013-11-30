class Donor < ActiveRecord::Base
  has_many :donor_product_relations
  has_many :products, through: :donor_product_relations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
