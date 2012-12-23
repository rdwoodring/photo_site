# == Schema Information
#
# Table name: pictures
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  image         :string(255)
#  imagecategory :string(255)
#

class Picture < ActiveRecord::Base
	attr_accessible :title, :description, :image, :imagecategory
	
	validates_presence_of :title, :description
	validates :imagecategory, presence: true, uniqueness: { case_sensitive: false }
	
	mount_uploader :image, ImageUploader
end
