class User < ApplicationRecord
  has_many :countries
  has_many :locations, through: :countries
  has_many :sites, through: :locations
  has_many :restaurants, through: :locations
  has_many :hotels, through: :locations
  has_many :follow_ids

  has_secure_password

end
