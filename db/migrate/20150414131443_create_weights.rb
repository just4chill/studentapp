class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|

      t.timestamps null: false
      t.string	:info
    end
  end
end
