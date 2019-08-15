class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "first_name", limit: 20, null: false
      t.string "surname", limit: 20, null: false
      t.text "email", null: false
      t.text "password_digest", null: false
      t.index ["email"], name: "users_email_key", unique: true
    end
  end
end
