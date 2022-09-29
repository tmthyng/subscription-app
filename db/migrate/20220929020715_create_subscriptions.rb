class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :cost
      t.date :renewal_date

      t.timestamps
    end
  end
end
