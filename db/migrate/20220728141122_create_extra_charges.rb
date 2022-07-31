class CreateExtraCharges < ActiveRecord::Migration[7.0]
  def change
    create_table :extra_charges do |t|
      t.belongs_to :extra, foreign_key: true
      t.belongs_to :reservation, foreign_key: true
      t.integer :number, :default => 0
      t.decimal :charge, :precision => 6,  :scale => 2, :default => 0.0
      t.timestamps
    end
  end
end
