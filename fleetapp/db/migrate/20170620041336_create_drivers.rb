class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
