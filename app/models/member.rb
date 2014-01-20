class Member < ActiveRecord::Base
	has_many :places
	has_many :comments
	attr_accessible :email, :password
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i , :message =>"is Wrong!!"
	#validates :email, :presence => true , :email_format => {:message => 'is not looking good'}
	validates :password , :presence => true, :length => { :minimum => 8}
	#validates :Re_Password , :presence => true, :length => { :minimum => 8}
	#validates_format_of :Email, :with => 

end
