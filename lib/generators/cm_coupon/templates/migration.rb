class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.integer :coupon_code
      t.integer :discount_type
      t.integer :percentage
      t.integer :price_cents
      t.datetime :valid_from
      t.datetime :valid_to
      t.integer :no_of_users
      t.integer :no_of_uses_per_user
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
