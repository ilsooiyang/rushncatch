class RemoveFieldsFromPlayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :korean?, :boolean
  end
end
