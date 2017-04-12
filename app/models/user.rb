class User < ApplicationRecord
  has_many :user_countries
  has_many :user_locations
  has_many :countries, through: :user_countries
  has_many :locations, through: :user_locations

  has_many :interests

  has_many :sites, through: :interests, source: :interestable, source_type: 'Site'
  has_many :restaurants, through: :interests, source: :interestable, source_type: 'Restaurant'
  has_many :hotels, through: :interests, source: :interestable, source_type: 'Hotel'

  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships

  has_secure_password

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end

end
