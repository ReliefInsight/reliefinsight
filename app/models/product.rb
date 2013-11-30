class Product < ActiveRecord::Base
  has_many :donor_product_relations
  has_many :donors, through: :donor_product_relations
  has_many :requester_product_relations
  has_many :requesters, through: :requester_product_relations
  def self.request_list
    all
  end
end
