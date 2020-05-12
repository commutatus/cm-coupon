class Coupon < ApplicationRecord
  belongs_to :user, optional: true

  enum discount_type: [:percentage, :price]

  validates_presence_of :discount_type, :valid_from, :valid_to
end
