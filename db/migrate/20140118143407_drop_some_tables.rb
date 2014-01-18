class DropSomeTables < ActiveRecord::Migration
  def change
    drop_table :donors
    drop_table :requesters
  end
end
