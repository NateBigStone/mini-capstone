class Order < ApplicationRecord
  belongs_to :fish, optional: true
  belongs_to :user, optional: true 
end
