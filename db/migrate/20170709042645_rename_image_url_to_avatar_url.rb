class RenameImageUrlToAvatarUrl < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :image_url, :avatar_url
  end
end
