class Item < ApplicationRecord
  has_many :item_images, dependent: :destroy

  validates_associated :item_images
end
