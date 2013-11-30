class AddStatusToRequesterProductRelation < ActiveRecord::Migration
  def change
    add_column :requester_product_relations, :status, :string
  end
end
