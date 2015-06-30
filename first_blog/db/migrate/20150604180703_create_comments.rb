class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_author
      t.text :comment
      t.integer :post_id

      t.timestamps null: false
    end
  end
end