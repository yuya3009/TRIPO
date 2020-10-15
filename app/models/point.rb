class Point < ApplicationRecord
  has_many :point_histories
  default_scope -> { order(created_at: :desc) }
  belongs_to :user
  validates :user_id, presence: true
end
