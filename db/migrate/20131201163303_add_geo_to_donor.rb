class AddGeoToDonor < ActiveRecord::Migration
  def change
    add_column :donors, :lat, :float
    add_column :donors, :lng, :float
  end
end
