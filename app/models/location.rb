class Location < ApplicationRecord
  validates :name, :shortname, presence: true
end
