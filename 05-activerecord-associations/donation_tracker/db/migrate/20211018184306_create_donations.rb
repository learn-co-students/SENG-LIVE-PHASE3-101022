class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.integer :amount 
      t.string :date
      t.boolean :completed 
    end
  end
end
