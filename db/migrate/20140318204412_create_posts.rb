class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :email
      t.text :name
      t.text :note

      t.timestamps
    end
  end
end
