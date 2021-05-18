class CreateGyroscopes < ActiveRecord::Migration[6.1]
  def change
    create_table :gyroscopes do |t|
      t.integer :drone_id
      t.integer :vector_x
      t.integer :velocity_vector_x
      t.integer :vector_y
      t.integer :velocity_vector_y
      t.integer :vector_z
      t.integer :velocity_vector_z    
    end
  end
end
