class Hotel < ApplicationRecord
  belongs_to :location
  has_many :interests, :as => :interestable
  has_many :users, through: :interests
end
