class Page < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :renewal_date, presence: true
end
