class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.string :coupon_code
      t.integer :discount_type, null: false
      t.integer :percentage
      t.integer :price_cents
      t.integer :status
      t.datetime :start_date, null: false
      t.datetime :end_date
      t.integer :no_of_users
      t.text :description

      t.timestamps
    end
  end
end
