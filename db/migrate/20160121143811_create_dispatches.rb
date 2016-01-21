class CreateDispatches < ActiveRecord::Migration
  def change
    create_table :dispatches do |t|
      t.date :date
      t.string :company
      t.decimal :tax
      t.string :salesperson

      t.timestamps null: false
    end
  end
end
