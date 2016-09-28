class AddFieldToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :profile_pic, :string
  end
end
