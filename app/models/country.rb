class Country < ApplicationRecord
  has_many :user_countries
  has_many :users, through: :user_countries
  has_many :cities
  has_many :sites, through: :cities
  has_many :restaurants, through: :cities
  has_many :hotels, through: :cities
end
