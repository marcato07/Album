class Photo < ApplicationRecord
  has_many :comments
  has_many :tags

  # validates :title, :description, :privacy, :view, :imagePath, presence: true
  # validates :view, numericality: { only_integer: true }
end

