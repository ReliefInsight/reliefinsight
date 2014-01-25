class AddLatAndLngColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lat, :float
    add_column :users, :lng, :float
    add_column :users, :address, :string
    add_column :users, :image_url, :string
    add_column :users, :name, :string
  end
end
