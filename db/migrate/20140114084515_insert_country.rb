class InsertCountry < ActiveRecord::Migration
  def up
  	Country.create :country_name => "Chiang Mai" , :country_pic => "chiangmai.jpg" , :country_descp => "Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et."
  	Country.create :country_name => "Kanchanaburi" , :country_pic => "kanjanaburi.jpg" , :country_descp => "Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et."
  	Country.create :country_name => "Pattaya" , :country_pic => "pattaya.jpg" , :country_descp => "Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et."
  	Country.create :country_name => "Phuket" , :country_pic => "phuket.jpg", :country_descp => "Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et."
  	Country.create :country_name => "Suphan Buri" , :country_pic => "supanburi.jpg", :country_descp => "Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et."
  end

  def down
  	Country.destroy_all
  end
end
