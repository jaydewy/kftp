class MakeFairYearNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :reservations, :fair_year, true
  end
end
