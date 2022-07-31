class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string  "name",               :limit => 32,                                :default => "",    :null => false
      t.decimal "discount_percent",                 :precision => 5,  :scale => 2, :default => 0.0
      t.decimal "amount",                           :precision => 8,  :scale => 2, :default => 0.0
      t.timestamps
    end
  end
end
