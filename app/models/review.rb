# frozen_string_literal: true

class Review < ApplicationRecord
  validates :title, :comment, :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  belongs_to :user
end
