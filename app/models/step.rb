class Step < ApplicationRecord
  belongs_to :recipe

  attachment :step_image

  validates :description, presence: true

end
