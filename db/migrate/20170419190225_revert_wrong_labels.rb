require_relative '20170419185907_add_record_label_ref_to_album'

class RevertWrongLabels < ActiveRecord::Migration[5.0]
  def change
    revert AddRecordLabelRefToAlbum

    change_table :albums do |t|
      t.references :record_label, foreign_key: true
    end
  end
end
