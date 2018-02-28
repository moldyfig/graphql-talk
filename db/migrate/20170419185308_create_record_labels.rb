class CreateRecordLabels < ActiveRecord::Migration[5.0]
  def change
    create_table :record_labels do |t|
      t.string :name
      t.string :founder
      t.string :headquarters
      t.integer :year_founded

      t.timestamps
    end
  end
end
