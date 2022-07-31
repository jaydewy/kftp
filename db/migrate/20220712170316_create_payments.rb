class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal  "amount",                       :precision => 11, :scale => 5, :default => 0.0
      t.string   "memo"
      t.boolean  "refundable",                                                  :default => false
      t.belongs_to :payment_method, foreign_key: true
      t.belongs_to :reservation, foreign_key: true
      t.timestamps
    end
  end
end
