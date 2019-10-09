class Album < ApplicationRecord
  validates :id, :title, :description, :view, presence: true
  validates :id, numericality: { only_integer: true }
end
