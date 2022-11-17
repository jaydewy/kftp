class ChangeDiscounts < ActiveRecord::Migration[7.0]
  def change
    add_column :discounts, :is_percent, :boolean, default: true, null: false
    add_column :discounts, :lot_fee_only, :boolean, default: false, null: false
    remove_column :discounts, :discount_percent, :decimal
  end
end
