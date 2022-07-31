class CreateRates < ActiveRecord::Migration[7.0]
  def change
    create_table :rates do |t|
      t.string "name", :limit => 32, :default => "", :null => false
      t.decimal "rate",      :precision => 10, :scale => 5, :default => 0.0, :null => false
      t.timestamps
    end
  end
end
