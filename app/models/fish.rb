class Fish < ApplicationRecord
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
  def supplier
    Supplier.find_by(id: self.supplier_id)
  end
end





