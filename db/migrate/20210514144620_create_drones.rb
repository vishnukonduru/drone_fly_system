class CreateDrones < ActiveRecord::Migration[6.1]
  def change
    create_table :drones do |t|
      t.integer :status, default: 0
      t.integer :position
      t.string :name
      t.timestamps
    end
  end
end
