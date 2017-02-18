class Order < ApplicationRecord
  belongs_to :food_item
  validates :quantity, presence: true, numericality: true
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
end
