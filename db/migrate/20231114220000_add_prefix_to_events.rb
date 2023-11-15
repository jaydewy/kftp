class AddPrefixToEvents < ActiveRecord::Migration[7.0]
    def change
      add_column :events, :prefix_string, :string
    end
  end