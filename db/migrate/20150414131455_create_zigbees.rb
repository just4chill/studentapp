class CreateZigbees < ActiveRecord::Migration
  def change
    create_table :zigbees do |t|

      t.timestamps null: false
    end
  end
end
