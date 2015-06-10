class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :provider
      t.string :uid
      t.string :name
      t.string :email
      t.string :gender
      t.date   :date_of_birth
      t.string :interest, default: "Both"
      t.string :location
      t.string :bio

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
