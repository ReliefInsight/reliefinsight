class RemoveDonorAndRequesterAndAdminTables < ActiveRecord::Migration
  def change
    drop_table :donors
    drop_table :requesters
    drop_table :admins
  end
end
