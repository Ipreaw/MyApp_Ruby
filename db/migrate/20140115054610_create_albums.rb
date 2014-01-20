class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :place

      t.timestamps
    end
    add_index :albums, :place_id
  end
end
