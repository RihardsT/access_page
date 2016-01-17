class AddTimeopenTimecloseActionReasonToLog < ActiveRecord::Migration
  def change
    add_column :logs, :timeopen, :datetime
    add_column :logs, :timeclose, :datetime
    add_column :logs, :action, :integer
    add_column :logs, :reason, :string
  end
end
