class AddReviewToAlbum < ActiveRecord::Migration[5.0]
  def change
    change_table :albums do |t|
      t.string :review, :limit => 4096
    end
  end
end
