class AddPreviousEventToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :previous_event, foreign_key: { to_table: :events }
  end
end
