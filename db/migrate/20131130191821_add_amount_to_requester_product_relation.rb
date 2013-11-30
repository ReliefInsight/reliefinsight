class AddAmountToRequesterProductRelation < ActiveRecord::Migration
  def change
    add_column :requester_product_relations, :amount, :integer
  end
end
