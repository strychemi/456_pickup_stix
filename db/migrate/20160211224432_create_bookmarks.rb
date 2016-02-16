class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :user_id, :null => false
      t.string :bookmarkable_type, :null => false
      t.integer :bookmarkable_id, :null => false

      t.index :user_id
      t.index :bookmarkable_type
      t.index :bookmarkable_id
      t.index [:user_id, :bookmarkable_type, :bookmarkable_id], :unique => true, :name => 'index_bookmarks_on_user_id_and_bookmarkable_type_and_id'

      t.timestamps null: false
    end
  end
end
