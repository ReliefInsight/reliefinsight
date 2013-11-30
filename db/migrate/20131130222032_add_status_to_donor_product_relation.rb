class AddStatusToDonorProductRelation < ActiveRecord::Migration
  def change
    add_column :donor_product_relations, :status, :string
  end
end
