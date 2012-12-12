class NewsItemsController < ApplicationController
	def show
	end
	
	def index
		@newsitems = NewsItem.all
	end

	def new
	end
end
