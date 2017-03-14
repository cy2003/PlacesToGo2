class Site < ApplicationRecord
  belongs_to :city, optional: true
end
