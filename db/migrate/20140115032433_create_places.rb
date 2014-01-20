class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place_headtopic
      t.string :place_name
      t.string :place_location
      t.string :place_descp
      t.references :country
      t.references :member

      t.timestamps
    end
    add_index :places, :country_id
    add_index :places, :member_id
  end
end
