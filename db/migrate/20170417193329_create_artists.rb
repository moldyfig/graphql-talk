class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :year_active_start
      t.integer :year_active_end
      t.string :genre
      t.string :style

      t.timestamps
    end
  end
end
