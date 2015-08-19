class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.date :post_date
      t.string :author
      t.boolean :published

      t.timestamps null: false
    end
    add_index :posts, :published
  end
end
