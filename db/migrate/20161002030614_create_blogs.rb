class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.references :player, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
