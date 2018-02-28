class AddArtistRefToAlbum < ActiveRecord::Migration[5.0]
  def change
    change_table :albums do |t|
      t.remove :artist
      t.references :artist, foreign_key: true
    end
  end
end
