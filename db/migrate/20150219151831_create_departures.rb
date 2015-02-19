class CreateDepartures < ActiveRecord::Migration
  def change
    create_table :departures do |t|
      t.datetime :date
      t.integer :status 
      t.belongs_to :flights, index: true

      t.timestamps null: false
    end
  end
end
