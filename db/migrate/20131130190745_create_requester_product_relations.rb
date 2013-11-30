class CreateRequesterProductRelations < ActiveRecord::Migration
  def change
    create_table :requester_product_relations do |t|
      t.references :requester, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
