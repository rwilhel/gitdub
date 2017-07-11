class RenameOrganizationsColumnInUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :organizations, :organizations_url
  end
end
