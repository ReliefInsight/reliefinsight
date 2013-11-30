class Product < ActiveRecord::Base
  has_many :donor_product_relations
  has_many :donors, through: :donor_product_relations
  has_many :requester_product_relations
  has_many :requesters, through: :requester_product_relations
  def self.request_list
    all
  end

  def sum_needed_amount
    requester_product_relations.inject(0){|sum, request| sum += request.amount}
  end

  def sum_current_amount
    donor_product_relations.inject(0){|sum, donation| sum += donation.amount}
  end
end
