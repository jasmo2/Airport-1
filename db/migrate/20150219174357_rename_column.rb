class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :departures, :flights_id, :flight_id
  end
end
