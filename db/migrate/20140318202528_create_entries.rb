class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :name
      t.text :email
      t.text :body

      t.timestamps
    end
  end
end
