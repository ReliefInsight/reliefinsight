class AddProductToDonor < ActiveRecord::Migration
  def change
    add_reference :donors, :product, index: true
  end
end
