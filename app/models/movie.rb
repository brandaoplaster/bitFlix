class Movie < ApplicationRecord
  belongs_to :serie, optional: true
  belongs_to :category, optional: true

  validates :title, presence: true
  validates :description, presence: true
  validates :thumbnail_key, presence: true
  validates :video_key, presence: true
  validates :episode_number, presence: true, uniqueness: { scope: :serial_id }, if: ->{ serie.present? }
  validates :category, presence: true, if: ->{ serie.nil? }
end
