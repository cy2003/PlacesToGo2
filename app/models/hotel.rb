class Hotel < ApplicationRecord
  belongs_to :city, optional: true
end
