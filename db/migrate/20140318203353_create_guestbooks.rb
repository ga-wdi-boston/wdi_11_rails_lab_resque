class CreateGuestbooks < ActiveRecord::Migration
  def change
    create_table :guestbooks do |t|
      t.text :name
      t.text :note

      t.timestamps
    end
  end
end
