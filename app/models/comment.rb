class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :comment_content, presence: true
end
