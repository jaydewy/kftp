class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date     "fair_year",                                                                           :null => false
      t.decimal  "deposit",                           :precision => 8,  :scale => 2, :default => 0.0
      t.decimal  "override_total",                    :precision => 8,  :scale => 2, :default => 0.0
      t.text     "special_request"
      t.integer  "slides",              :limit => 1,                                 :default => 0
      t.integer  "length",              :limit => 3,                                 :default => 0
      t.string   "vehicle_license",     :limit => 20
      t.string   "vehicle_province",       :limit => 16
      t.boolean  "checked_in",                                                       :default => false
      t.integer  "adults",              :limit => 2,                                 :default => 2
      t.integer  "pets",                :limit => 2,                                 :default => 0
      t.integer  "kids",                :limit => 2,                                 :default => 0
      t.integer  "lock_version",                                                     :default => 0
      t.decimal  "total",                             :precision => 8,  :scale => 2, :default => 0.0
      t.boolean  "confirmed",                                                          :default => false
      t.decimal  "ext_charges",                       :precision => 6,  :scale => 2, :default => 0.0
      t.text     "tax_str"
      t.decimal  "tax_amount",                        :precision => 6,  :scale => 2, :default => 0.0
      t.text     "log"
      t.string   "vehicle_license_2",   :limit => 20
      t.string   "vehicle_province_2",     :limit => 16
      t.decimal  "onetime_discount",                  :precision => 8,  :scale => 2, :default => 0.0
      t.boolean  "archived",                                                         :default => false
      t.integer  "next"
      t.integer  "prev"
      t.boolean  "cancelled",                                                        :default => false
      t.datetime :checked_in_time
      t.belongs_to :lot, foreign_key: true
      t.belongs_to :discount, foreign_key: true
      t.belongs_to :group, foreign_key: true
      t.belongs_to :camper, foreign_key: true
      
      t.timestamps
    end
  end
end
