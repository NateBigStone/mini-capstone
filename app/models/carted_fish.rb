class CartedFish < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :fish

  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :quantity, numericality: { greater_than: 0 }

end
