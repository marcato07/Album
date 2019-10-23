class Album < ApplicationRecord
  validates :title, :description, :view, presence: true
  # validates :id, numericality: { only_integer: true }
end
