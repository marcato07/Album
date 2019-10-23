class Photo < ApplicationRecord
  has_many :comments, :tags

  validates :title, :description, :privacy, :uploadDate, :view, :imagePath presence: true
  validates :view, numericality: { only_integer: true }
end

