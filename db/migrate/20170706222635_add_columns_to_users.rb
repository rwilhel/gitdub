class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :string
    add_column :users, :avatar_url, :string
    add_column :users, :name, :string
    add_column :users, :provider, :string
  end
end
