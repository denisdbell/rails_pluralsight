class FleetsVehicles < ActiveRecord::Migration[5.0]
  def change
     create_table :fleets_vehicles, id: false do |t|
      t.belongs_to :fleet, index: true
      t.belongs_to :vehicle, index: true
    end
  end
end
