class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true

end
