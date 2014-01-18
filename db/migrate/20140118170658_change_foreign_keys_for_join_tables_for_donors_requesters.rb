class ChangeForeignKeysForJoinTablesForDonorsRequesters < ActiveRecord::Migration
  def change
    remove_index :donor_product_relations, :donor_id
    rename_column :donor_product_relations, :donor_id, :user_id
    add_index :donor_product_relations, :user_id

    remove_index :requester_product_relations, :requester_id
    rename_column :requester_product_relations, :requester_id, :user_id
    add_index :requester_product_relations, :user_id
  end
end