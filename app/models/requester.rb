class Requester < User
  has_many :requester_product_relations, dependent: :destroy
  has_many :products, through: :requester_product_relations
end
