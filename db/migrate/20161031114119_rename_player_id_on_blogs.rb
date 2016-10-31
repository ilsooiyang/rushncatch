class RenamePlayerIdOnBlogs < ActiveRecord::Migration
  def change
    rename_column :blogs, :player_id, :user_id
  end
end