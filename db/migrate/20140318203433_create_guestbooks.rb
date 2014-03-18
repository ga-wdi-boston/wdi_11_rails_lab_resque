class CreateGuestbooks < ActiveRecord::Migration
  def change
    create_table :guestbooks do |t|
      t.string :email
      t.string :note

      t.timestamps
    end
  end
end
