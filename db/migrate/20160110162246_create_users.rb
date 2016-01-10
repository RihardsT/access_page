class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :person_code
      t.string :password_digest
      t.integer :level

      t.timestamps null: false
    end
  end
end
