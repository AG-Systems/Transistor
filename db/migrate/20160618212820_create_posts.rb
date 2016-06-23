class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :question
      t.string :cater
      t.string :name
      t.timestamps null: false
    end
  end
end
