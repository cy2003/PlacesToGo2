class Hotel < ApplicationRecord
  belongs_to :hotelable, :polymorphic => true
end
