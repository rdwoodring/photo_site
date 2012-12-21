# == Schema Information
#
# Table name: pictures
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Picture < ActiveRecord::Base
	attr_accessible :title, :description, :image
	
	validates_presence_of :title, :description
	
	mount_uploader :image, ImageUploader
end
