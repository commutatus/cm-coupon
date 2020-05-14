class Coupon < ApplicationRecord
  belongs_to :user, optional: true

  enum discount_type: [:percentage, :price]
  enum status: [:active, :draft, :expired]

  validates_presence_of :discount_type, :start_date
end
