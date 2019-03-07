class CreateBillboardSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :billboard_songs do |t|
      t.integer :rank
      t.string :song

      t.timestamps
    end
  end
end
