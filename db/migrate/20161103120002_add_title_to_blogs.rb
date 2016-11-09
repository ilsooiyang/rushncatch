class AddTitleToBlogs < ActiveRecord::Migration[5.0]
  def up
    add_column :blogs, :title, :string
  end

  def down
    remove_column :blogs, :title, :string
  end
end
