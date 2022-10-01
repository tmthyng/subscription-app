class AddSlugToSubscriptions < ActiveRecord::Migration[7.0]
  def change
    add_column :subscriptions, :slug, :string
    add_index :subscriptions, :slug, unique: true
  end
end
