class Country < ApplicationRecord
  has_many :users, through: :user_countries
  has_many :locations, dependent: :destroy
  has_many :sites, through: :locations, dependent: :destroy
  has_many :restaurants, through: :locations, dependent: :destroy
  has_many :hotels, through: :locations, dependent: :destroy
end
