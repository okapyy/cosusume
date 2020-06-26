class Item < ApplicationRecord
  belongs_to :user
  has_many :item_images
  accepts_nested_attributes_for :item_images

  validates :evaluation, numericality: {less_than_or_equal_to: 5.0}
end
