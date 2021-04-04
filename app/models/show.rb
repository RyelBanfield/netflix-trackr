class Show < ApplicationRecord
  validates :title, :comment, :rating, presence: true
  belongs_to :user
end
