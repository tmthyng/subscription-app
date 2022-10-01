class RemoveSlugFromSubscriptions < ActiveRecord::Migration[7.0]
  def change
    remove_column :subscriptions, :slug, :string
  end
end
