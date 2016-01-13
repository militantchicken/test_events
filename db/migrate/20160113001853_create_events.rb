class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :subscription, index: true
      t.string :title
      t.text :description
      t.integer :mod
      t.datetime :event_start
      t.datetime :event_end

      t.timestamps
    end
  end
end
