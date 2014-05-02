# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Image < ActiveRecord::Base
  mount_uploader :image, BaseImageUploader
end
