# frozen_string_literal: true

class RenameShowsToReviews < ActiveRecord::Migration[6.1]
  def change
    rename_table :shows, :reviews
  end
end
