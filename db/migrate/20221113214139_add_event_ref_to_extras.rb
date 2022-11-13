class AddEventRefToExtras < ActiveRecord::Migration[7.0]
  def change
    add_reference :extras, :event
  end
end
