class CreateArrivals < ActiveRecord::Migration
  def change
    create_table :arrivals do |t|
      t.datetime :date
      t.integer :status
      t.belongs_to :flight, index: true

      t.timestamps null: false
    end
  end
end
