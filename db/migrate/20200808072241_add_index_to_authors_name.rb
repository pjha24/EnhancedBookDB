class AddIndexToAuthorsName < ActiveRecord::Migration[6.0]
  def change
    add_index :authors, :name, unique: true     #ensures uniqueness at db level
  end
end
