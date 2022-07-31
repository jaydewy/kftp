class CreateExtras < ActiveRecord::Migration[7.0]
  def change
    create_table :extras do |t|
      t.string :name
      t.decimal :charge, :precision => 6,  :scale => 2, :default => 0.0
      t.boolean :active, :default => true
      t.timestamps
    end
  end
end
