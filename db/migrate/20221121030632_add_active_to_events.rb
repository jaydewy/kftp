class AddActiveToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :active, :boolean, null: false, default: false
  end
end
