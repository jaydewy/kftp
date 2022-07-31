class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string  :name,            :limit => 32, :default => "", :null => false
      t.integer :expected_number,               :default => 0,  :null => false
      t.belongs_to :camper, foreign_key: true
      
      t.timestamps
    end
  end
end
