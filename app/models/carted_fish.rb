class CartedFish < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :fish

end
