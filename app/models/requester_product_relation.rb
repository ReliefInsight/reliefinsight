class RequesterProductRelation < ActiveRecord::Base
  belongs_to :requester
  belongs_to :product
end
