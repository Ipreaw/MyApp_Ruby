class Place < ActiveRecord::Base
	validates :place_descp , :presence => true , :length => { :minimum => 10 }
	validates :place_location , :presence => true , :length => { :minimum => 10 }
	validates :place_name , :presence => true , :length => { :minimum => 10 }
	validates :place_headtopic , :presence => true , :length => { :minimum => 10 }
	validates :member_id , :presence => true
	belongs_to :country
	belongs_to :member
	has_many :albumss, :dependent => :destroy
	has_many :comments, :dependent => :destroy
	attr_accessible :place_descp, :place_location, :place_name , :place_headtopic
end
