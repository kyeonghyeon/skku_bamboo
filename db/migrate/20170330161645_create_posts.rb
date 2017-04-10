class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.text :article
      t.timestamps null: false
    end
  end
end