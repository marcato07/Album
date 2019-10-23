class Location < ApplicationRecord
  validates :name, :shorname, presence: true
end
