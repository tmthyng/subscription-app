class Subscription < ApplicationRecord
  validates :name, presence: true
  validates :cost, presence: true
  validates :renewal_date, presence: true
end
