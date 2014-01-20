class Country < ActiveRecord::Base
	has_many :places
	attr_accessible :country_name, :country_pic , :country_descp
end
