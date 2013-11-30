class CreateDonorProductRelations < ActiveRecord::Migration
  def change
    create_table :donor_product_relations do |t|
      t.references :donor, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
