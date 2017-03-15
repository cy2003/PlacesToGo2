class Location < ApplicationRecord
  belongs_to :country, required: false
  has_many :sites
  has_many :restaurants
  has_many :hotels
end
