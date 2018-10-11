class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :issue_date
      t.string :publishing_company
      t.text :description
      t.string :picture
      t.integer :category_id

      t.timestamps
    end
  end
end
