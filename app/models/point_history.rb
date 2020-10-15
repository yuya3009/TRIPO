class PointHistory < ApplicationRecord
  has_many :points
  belongs_to :user
  belongs_to :pointable, polymorphic: true
  
end
