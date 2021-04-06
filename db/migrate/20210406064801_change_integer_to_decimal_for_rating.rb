class ChangeIntegerToDecimalForRating < ActiveRecord::Migration[6.1]
  def change
    change_column(:reviews, :rating, :decimal)
  end
end
