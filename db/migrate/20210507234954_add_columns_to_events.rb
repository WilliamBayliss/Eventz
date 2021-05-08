class AddColumnsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :title, :string
    add_column :events, :description, :string
  end
end
