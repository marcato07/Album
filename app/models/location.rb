class Location < ApplicationRecord
  has_many :locations
  # validates :name, :shortname, presence: true
end
