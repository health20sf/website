class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.string :url
      t.datetime :time, null: false

      t.timestamps null: false
    end
  end
end
