class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.boolean :korean?

      t.timestamps
    end
  end
end
