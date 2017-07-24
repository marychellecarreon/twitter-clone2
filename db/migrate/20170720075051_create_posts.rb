class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :username, index: true, foreign_key: true
      t.text :body

      t.timestamps null: false
    end
    add_index :posts, [:username, :created_at]
  end
end
