class DropBlogs < ActiveRecord::Migration[6.1]
  def change
    drop_table :blogs
  end
end
