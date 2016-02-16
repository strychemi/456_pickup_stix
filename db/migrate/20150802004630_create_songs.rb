class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id

      t.index :name
      t.index :artist_id
      t.index [:name, :artist_id], :unique => true

      t.timestamps null: false
    end
  end
end
