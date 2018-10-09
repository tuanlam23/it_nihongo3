class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
      t.string :login_name
      t.string :gender
      t.string :avatar
      t.string :password_digest

      t.timestamps
    end
  end
end
