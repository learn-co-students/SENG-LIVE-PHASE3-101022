class AddDonorIdToDonations < ActiveRecord::Migration[7.0]
  def change
    add_column :donations, :donor_id, :integer
  end
end
