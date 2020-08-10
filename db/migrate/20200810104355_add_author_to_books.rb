class AddAuthorToBooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :author, foreign_key: true
  end
end
