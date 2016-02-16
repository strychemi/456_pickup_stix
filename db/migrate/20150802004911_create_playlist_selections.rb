class CreatePlaylistSelections < ActiveRecord::Migration
  def change
    create_table :playlist_selections do |t|
      t.integer :song_id, :null => false
      t.integer :playlist_id, :null => false

      t.index :song_id
      t.index :playlist_id

      t.timestamps null: false
    end
  end
end
