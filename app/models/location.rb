class Location < ApplicationRecord
  belongs_to :country, required: false
  has_many :sites, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :hotels, dependent: :destroy
end
