class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.integer :category
      t.string :email
      t.text :content

      t.timestamps null: false
    end
  end
end
