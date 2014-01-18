class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :type, :string
    add_column :users, :avatar, :string
  end
end
