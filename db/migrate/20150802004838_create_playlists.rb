class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name, :null => false
      t.integer :user_id, :null => false

      t.index :name
      t.index :user_id
      t.index [:user_id, :name], :unique => true

      t.timestamps null: false
    end
  end
end
