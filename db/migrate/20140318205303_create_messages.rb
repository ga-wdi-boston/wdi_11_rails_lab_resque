class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.text :subject

      t.timestamps
    end
  end
end
