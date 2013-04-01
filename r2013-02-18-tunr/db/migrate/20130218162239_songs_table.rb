class SongsTable < ActiveRecord::Migration
  def change
  create_table :songs do |t|
    t.string :name
    t.text :image
    t.string :filename
    t.integer :album_id
    t.integer :artist_id
    t.timestamps

    end
  end
end
