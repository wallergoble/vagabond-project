class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :body
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
