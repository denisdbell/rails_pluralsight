class DriversVehicles < ActiveRecord::Migration[5.0]
  def change
      create_table :drivers_vehicles, id: false do |t|
        t.belongs_to :driver, index: true
        t.belongs_to :vehicle, index: true
      end
  end
end