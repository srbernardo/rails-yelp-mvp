class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["Chinese", "Italian", "Japanese", "French", "Belgian", "Brazilian"]

  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
end
