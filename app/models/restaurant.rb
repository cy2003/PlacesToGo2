class Restaurant < ApplicationRecord
  belongs_to :restable, :polymorphic => true
end
