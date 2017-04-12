class Location < ApplicationRecord
  has_many :user_locations
  has_many :users, through: :user_locations

  belongs_to :country, required: false

  has_many :sites
  has_many :restaurants
  has_many :hotels

end
