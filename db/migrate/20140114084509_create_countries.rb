class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country_name
      t.string :country_pic
      t.string :country_descp
      t.timestamps
    end
  end
end
