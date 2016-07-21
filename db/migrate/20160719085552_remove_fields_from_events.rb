class RemoveFieldsFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :title, :string
    remove_column :events, :location, :string
    remove_column :events, :url, :string
    remove_column :events, :time, :datetime
  end
end
