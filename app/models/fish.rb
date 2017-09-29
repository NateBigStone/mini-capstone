class Fish < ApplicationRecord
  def supplier
    Supplier.find_by(id: self.supplier_id)
  end
  has_many :carted_fishes
  has_many :category_fishes
  has_many :categories, through: :category_fishes
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true 
  validates :description, length: { in: 20..500 }

  def sale_message
    if discounted?  
      " -Discount Item!!!" 
    else
      " -Everyday Value!"
    end
  end  
  def tax
    return price * 0.09 
  end
  def total
    return price + tax
  end
  def discounted? 
    price < 5
  end

end





