class AddArrivesAtToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :arrives_at, :time
  end
end
