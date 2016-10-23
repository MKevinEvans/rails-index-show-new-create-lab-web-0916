class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.text :store
      t.text :coupon_code
    end
  end
end
