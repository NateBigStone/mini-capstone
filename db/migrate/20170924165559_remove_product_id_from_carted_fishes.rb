class RemoveProductIdFromCartedFishes < ActiveRecord::Migration[5.1]
  def change
    remove_column :carted_fishes, :product_id, :integer
    add_column :carted_fishes, :fish_id, :integer
  end
end
