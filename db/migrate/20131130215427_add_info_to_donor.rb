class AddInfoToDonor < ActiveRecord::Migration
  def change
    add_column :donors, :address, :string
    add_column :donors, :image_url, :string
  end
end
