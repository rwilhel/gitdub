class RemoveOrganizationsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :organizations_url, :string
  end
end
