class Location < ApplicationRecord
  has_many :users, through: :user_locations
  belongs_to :country, required: false
  has_many :sites, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :hotels, dependent: :destroy
end
