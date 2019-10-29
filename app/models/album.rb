class Album < ApplicationRecord
  has_many :photos
  # validates :title, :description, :view, presence: true
  # validates :id, numericality: { only_integer: true }
end
