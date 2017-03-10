class User < ApplicationRecord
  has_many :user_countries
  has_many :countries, through: :user_countries
  has_many :cities, through: :countries
  has_many :sites, through: :cities
  has_many :restaurants, through: :cities
  has_many :hotels, through: :cities

  has_secure_password
  
end
