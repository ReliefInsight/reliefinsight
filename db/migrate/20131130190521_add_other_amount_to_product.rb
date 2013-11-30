class AddOtherAmountToProduct < ActiveRecord::Migration
  def change
    add_column :products, :needed_amount, :integer
    add_column :products, :current_amount, :integer
  end
end
