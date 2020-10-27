class Recipe < ApplicationRecord
  default_scope -> { order(created_at: :desc) }

  belongs_to :user
  belongs_to :genre
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :steps, allow_destroy: true

  attachment :recipe_image

  validates :name, presence: true
  validates :introduction, presence: true
  validates :cost, presence: true
  validates :time, presence: true
  validates :material, presence: true
end
