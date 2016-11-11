class AddIntroToUser < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :intro, :text
  end

  def down
  	remove_column :users, :intro, :text
  end
end
