class AddCurrencyToSubscriptions < ActiveRecord::Migration[7.0]
  def change
    add_column :subscriptions, :currency, :string
  end
end
