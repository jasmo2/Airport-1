class ChangeColumnTypeInFlights < ActiveRecord::Migration
  def self.up
   change_column :flights, :number, :string
  end
 
  def self.down
   change_column :flights, :number, :integer
  end
end
