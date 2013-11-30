class AddInfoToRequester < ActiveRecord::Migration
  def change
    add_column :requesters, :address, :string
    add_column :requesters, :image_url, :string
  end
end
