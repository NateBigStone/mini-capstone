class Category < ApplicationRecord
  
  has_many :category_fishes
  has_many :fishes, through: :category_fishes

  validates :name, uniqueness: true

end
