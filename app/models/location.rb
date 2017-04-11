class Location < ApplicationRecord
  has_many :user_locations
  has_many :users, through: :user_locations
  belongs_to :country, required: false
  has_many :sites, :as => :siteable
  has_many :restaurants, :as => :restable
  has_many :hotels, :as => :hotelable
end
