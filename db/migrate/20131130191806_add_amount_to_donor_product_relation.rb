class AddAmountToDonorProductRelation < ActiveRecord::Migration
  def change
    add_column :donor_product_relations, :amount, :integer
  end
end
