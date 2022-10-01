class Subscription < ApplicationRecord
  validates :name, presence: true
  validates :cost, presence: true
  validates :renewal_date, presence: true

  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    name_changed?
  end
end
