class PicturesController < ApplicationController
	before_filter :check_auth, :only => [:edit, :new, :update, :destroy]
	
	def new
		@picture = Picture.new
	end
	
	def create
		@picture = Picture.new(params[:picture])
		if @picture.save
			redirect_to pictures_path
		else
			render action: 'new'
		end
	end
	
	def destroy
	end
	
	def edit
	end
	
	def index
		@pictures =  Picture.all
	end
	
	def show
		@picture = Picture.find(params[:id])
	end
	
	def check_auth
		#do something to check authorization 
	end
end
