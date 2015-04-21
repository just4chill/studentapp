class CreateZigbees < ActiveRecord::Migration
  def change
    create_table :zigbees do |t|

      t.timestamps null: false

      t.integer	:ref
      t.integer	:d_state
      t.integer :s_val
      
    end
  end
end
