class AddColumnsToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :age, :integer
  end
end
