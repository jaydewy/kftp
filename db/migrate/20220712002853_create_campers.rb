class CreateCampers < ActiveRecord::Migration[7.0]
  def change
    create_table :campers do |t|
      t.string  "last_name",    :limit => 32,  :default => "", :null => false
      t.string  "first_name",   :limit => 32,  :default => "", :null => false
      t.string  "address",      :limit => 32,  :default => "", :null => false
      t.string  "city",         :limit => 32,  :default => "", :null => false
      t.string  "province",        :limit => 16,  :default => "", :null => false
      t.string  "postal_code",    :limit => 12,  :default => "", :null => false
      t.integer "lock_version",                :default => 0
      t.string  "phone",        :limit => 18
      t.string  "email",        :limit => 128
      t.string  "phone_2",      :limit => 18
      t.string  "email_2",        :limit => 128
      t.text    "notes"
      t.text    "addl"
      t.timestamps
    end
  end
end
