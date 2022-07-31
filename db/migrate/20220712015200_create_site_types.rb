class CreateSiteTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :site_types do |t|
      t.string  "name",      :limit => 32, :default => "",    :null => false
      t.timestamps
    end
  end
end
