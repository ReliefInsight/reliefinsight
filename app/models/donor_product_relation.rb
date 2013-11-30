class DonorProductRelation < ActiveRecord::Base
  belongs_to :donor
  belongs_to :product
end
