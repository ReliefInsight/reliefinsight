class DonorProductRelation < ActiveRecord::Base
  belongs_to :donor, foreign_key: 'user_id'
  belongs_to :product
end
