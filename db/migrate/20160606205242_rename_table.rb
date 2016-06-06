class RenameTable < ActiveRecord::Migration
  def change
    rename_table :boxes, :box_items
  end
end
