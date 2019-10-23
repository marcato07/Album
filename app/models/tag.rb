class Tag < ApplicationRecord
  validates :title, presence: true
end
