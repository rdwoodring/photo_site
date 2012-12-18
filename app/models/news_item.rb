# == Schema Information
#
# Table name: news_items
#
#  id         :integer          not null, primary key
#  newsbody   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NewsItem < ActiveRecord::Base
	attr_accessible :newsbody
	
	validates_presence_of :newsbody
end
