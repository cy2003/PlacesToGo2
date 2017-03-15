class Restaurant < ApplicationRecord
  belongs_to :location, optional: true
end
