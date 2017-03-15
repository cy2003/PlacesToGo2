class Country < ApplicationRecord
  belongs_to :user
  has_many :locations
  has_many :sites, through: :locations
  has_many :restaurants, through: :locations
  has_many :hotels, through: :locations
end
