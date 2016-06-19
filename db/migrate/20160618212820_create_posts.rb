class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :question

      t.timestamps null: false
    end
  end
end
