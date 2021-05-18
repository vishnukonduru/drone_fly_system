class CreateEngines < ActiveRecord::Migration[6.1]
  def change
    create_table :engines do |t|
      t.integer :status, default: 0
      t.integer :power_indicator, default: 0
      t.integer :drone_id
    end
  end
end
