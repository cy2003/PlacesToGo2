class Site < ApplicationRecord
  belongs_to :location, optional: true
end
