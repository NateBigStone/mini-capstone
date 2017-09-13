class AddSupplierIdToFishes < ActiveRecord::Migration[5.1]
  def change
    add_column :fish, :supplier_id, :integer
  end
end
