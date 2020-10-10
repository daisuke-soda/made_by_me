class Recipe < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  has_many :favorites, dependent: :destroy   
  has_many :comments, dependent: :destroy
  has_many :steps, dependent: :destroy

  validates :name, presence: true
  validates :introduction, presence: true
  validates :cost, presence: true
  validates :time, presence: true
  validates :material, presence: true
end
