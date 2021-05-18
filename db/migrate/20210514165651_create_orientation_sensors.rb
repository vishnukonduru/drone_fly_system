class CreateOrientationSensors < ActiveRecord::Migration[6.1]
  def change
    create_table :orientation_sensors do |t|
      t.integer :pitch, default: 0
      t.integer :roll, default: 0
      t.integer :drone_id
    end
  end
end
