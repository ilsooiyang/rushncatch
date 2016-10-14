class RemoveAgeFromPlayer < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :age, :integer
  end
end
