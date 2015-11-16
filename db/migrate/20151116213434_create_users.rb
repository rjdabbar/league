class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, index: true, null: false
      t.string :password_digest, null: false
      t.string :session_token

      t.timestamps null: false
    end
  end
end
