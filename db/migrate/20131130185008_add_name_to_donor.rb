class AddNameToDonor < ActiveRecord::Migration
  def change
    add_column :donors, :name, :string
  end
end
