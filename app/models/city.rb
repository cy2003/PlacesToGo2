class City < ApplicationRecord
  belongs_to :country
  has_many :sites
  has_many :restaurants
  has_many :hotels
end
