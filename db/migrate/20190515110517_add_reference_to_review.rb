class AddReferenceToReview < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :restaurant, foreign_key: true
    remove_column :restaurants, :review_id
  end
end
