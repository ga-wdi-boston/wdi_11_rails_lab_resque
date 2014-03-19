class RemoveNameAndEmailFromNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :name
    remove_column :notes, :email
  end
end
