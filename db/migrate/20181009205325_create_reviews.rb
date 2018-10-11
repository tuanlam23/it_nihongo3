class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :review_content
      t.date :review_date
      t.integer :user_id
      t.integer :book_id
      t.float :rate_star

      t.timestamps
    end
  end
end
