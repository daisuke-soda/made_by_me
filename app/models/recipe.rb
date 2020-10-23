class Recipe < ApplicationRecord

  belongs_to :user
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
