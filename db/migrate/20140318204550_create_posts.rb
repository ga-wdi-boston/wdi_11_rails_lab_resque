class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :username
      t.text :email
      t.text :body

      t.timestamps
    end
  end
end
