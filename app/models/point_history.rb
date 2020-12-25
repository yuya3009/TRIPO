class PointHistory < ApplicationRecord
  has_many :user_points
  belongs_to :user
  belongs_to :pointable, polymorphic: true
  
end
