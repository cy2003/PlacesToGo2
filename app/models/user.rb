class User < ApplicationRecord
  has_many :countries, dependent: :destroy
  has_many :locations, through: :countries, dependent: :destroy
  has_many :sites, through: :locations, dependent: :destroy
  has_many :restaurants, through: :locations, dependent: :destroy
  has_many :hotels, through: :locations, dependent: :destroy
  has_many :relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :following, through: :relationships, source: :followed 

  has_secure_password

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

end
