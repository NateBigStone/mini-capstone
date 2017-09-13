class Supplier < ApplicationRecord
  def fishes
    Fish.where(supplier_id: id)

  end
end
