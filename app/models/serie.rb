class Serie < ApplicationRecord
  include PgSearch
  multisearchable against: [:title]

  belongs_to :category
  has_many :reviews, as: :reviewable

  validates :title, presence: true
  validates :description, presence: true
  validates :thumbnail_key, presence: true
end
