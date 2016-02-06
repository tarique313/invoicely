class AddStatusTypeToDispatches < ActiveRecord::Migration
  def change
    add_column :dispatches, :status_type, :string
  end
end
