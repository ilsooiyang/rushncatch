class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end

# ActiveRecord::StatementInvalid: PG::UndefinedColumn: ERROR:  column blogs.user_id does not exist
# LINE 1: SELECT "blogs".* FROM "blogs" WHERE "blogs"."user_id" = $1
#                                             ^
# : SELECT "blogs".* FROM "blogs" WHERE "blogs"."user_id" = $1
