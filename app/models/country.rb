class Country < ApplicationRecord
  has_many :user_countries
  has_many :users, through: :user_countries
  has_many :locations
  has_many :sites, through: :locations
  has_many :restaurants, through: :locations
  has_many :hotels, through: :locations
end
