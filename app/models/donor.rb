class Donor < User
  has_many :donor_product_relations, dependent: :destroy
  has_many :products, through: :donor_product_relations
end
