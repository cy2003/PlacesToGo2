class Site < ApplicationRecord
  belongs_to :siteable, :polymorphic => true
end
