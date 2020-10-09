class Step < ApplicationRecord
  belongs_to :recipe

  validates :description, presence: true
  validates :step_order, presence: true
end
