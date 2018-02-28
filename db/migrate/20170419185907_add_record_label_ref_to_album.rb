class AddRecordLabelRefToAlbum < ActiveRecord::Migration[5.0]
  def change
    change_table :albums do |t|
      t.references :record_labels, foreign_key: true
    end
  end
end
