class Order < ApplicationRecord
  belongs_to :user, optional: true 
  has_many :carted_fishes
  has_many :fishes, through: :carted_fishes
end
     