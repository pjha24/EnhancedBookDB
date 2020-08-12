class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.references :book, null: false, foreign_key: true, index: {unique: true}
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
