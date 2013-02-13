class NewsItemsController < ApplicationController
	#before_filter :authenticate_user!, :except => [:show, :index]
	load_and_authorize_resource
	
	def show
	end
	
	def index
		@newsitems = NewsItem.order("created_at DESC")
	end

	def new
		@newsitem = NewsItem.new
	end
	
	def edit
	end
	
	def create
		@newsitem = NewsItem.new(params[:news_item])
		if @newsitem.save
			redirect_to news_path
		else
			render action: 'new'
		end
	end
end
