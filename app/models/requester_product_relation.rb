class RequesterProductRelation < ActiveRecord::Base
  belongs_to :requester, foreign_key: 'user_id'
  belongs_to :product
end
