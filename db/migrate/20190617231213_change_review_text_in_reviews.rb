class ChangeReviewTextInReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :review_text, :comment
  end
end
