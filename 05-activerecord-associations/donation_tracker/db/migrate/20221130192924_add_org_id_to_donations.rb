class AddOrgIdToDonations < ActiveRecord::Migration[7.0]
  def change
    add_column :donations, :organization_id, :integer
  end
end
