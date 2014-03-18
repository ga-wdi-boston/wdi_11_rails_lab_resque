class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :name
      t.text :email
      t.text :body

      t.timestamps
    end
  end
end
