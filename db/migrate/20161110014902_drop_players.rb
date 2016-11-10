class DropPlayers < ActiveRecord::Migration[5.0]
  def change
		drop_table :players, force: :cascade
  end
end
