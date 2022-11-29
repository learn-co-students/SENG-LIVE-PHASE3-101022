class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.integer :amount 
      t.string :date
      t.boolean :completed 
    end 
  end
end
