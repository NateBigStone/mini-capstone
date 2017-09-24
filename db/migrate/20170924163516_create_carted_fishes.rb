class CreateCartedFishes < ActiveRecord::Migration[5.1]
  def change
    create_table :carted_fishes do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  remove_column :orders, :quantity, :integer
  remove_column :orders, :fish_id, :integer
  end
end
