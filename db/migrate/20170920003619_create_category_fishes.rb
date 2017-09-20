class CreateCategoryFishes < ActiveRecord::Migration[5.1]
  def change
    create_table :category_fishes do |t|
      t.integer :category_id
      t.integer :fish_id

      t.timestamps
    end
  end
end
