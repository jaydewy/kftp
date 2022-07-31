class CreateLots < ActiveRecord::Migration[7.0]
  def change
    create_table :lots do |t|
      t.string  "name",              :limit => 32,                               :default => "",    :null => false
      t.integer "length",            :limit => 3,                                :default => 0,     :null => false
      t.integer "width",             :limit => 3,                                :default => 102
      t.string  "special_condition"
      t.boolean "unavailable",                                                   :default => false
      t.belongs_to :site_type, foreign_key: true
      t.belongs_to :rate, foreign_key: true
      t.timestamps
    end
  end
end
