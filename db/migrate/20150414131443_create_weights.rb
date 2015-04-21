class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|

      t.timestamps null: false

      t.integer	:ref
      t.integer :w_val
      
    end
  end
end
