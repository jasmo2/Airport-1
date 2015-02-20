class ChangeDateFormatInDepaturesAndArrivals < ActiveRecord::Migration
  def self.up
   change_column :arrivals, :status, :integer, default: 0
   change_column :departures, :status, :integer, default: 0
  end
 
  def self.down
   change_column :arrivals, :status, :integer
   change_column :departures, :status, :integer
  end


end
