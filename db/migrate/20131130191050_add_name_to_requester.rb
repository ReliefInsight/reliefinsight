class AddNameToRequester < ActiveRecord::Migration
  def change
    add_column :requesters, :name, :string
  end
end
