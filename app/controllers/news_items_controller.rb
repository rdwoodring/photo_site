class NewsItemsController < ApplicationController
	before_filter :check_auth, :only => [:edit, :new, :update, :destroy]
	
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
	
	def check_auth
		#do something to check authorization 
	end
end
