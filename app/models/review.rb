class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true
  belongs_to :user

  validates :description, presence: true, length: { minimum: 50 }
  validates :rating, presence: true, numericality: { only_integer: true, greater_that: 0, less_that_or_equal_to: 5 }
  validates :user_id, uniqueness: { scope: [:reviewable_type, :reviewable_id], message: "can add only one review per resource" }
end
