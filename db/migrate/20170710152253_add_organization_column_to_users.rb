class AddOrganizationColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :organizations, :string
  end
end
