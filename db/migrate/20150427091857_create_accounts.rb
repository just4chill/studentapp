class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|

      t.timestamps null: false

      t.integer :amount
      t.string	:card
      t.string	:name

    end
  end
end
