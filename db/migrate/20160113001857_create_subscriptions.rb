class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.integer :sub_user_count
      t.references :category, index: true
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
