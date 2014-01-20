require 'carrierwave/orm/activerecord'
class Albums < ActiveRecord::Base
  belongs_to :place
  mount_uploader :avatar, AvatarUploader
  attr_accessible :avatar
  def read_uploader(column)
    self[column]
  end

  def write_uploader(column, identifier)
    self[column] = identifier
  end
end
