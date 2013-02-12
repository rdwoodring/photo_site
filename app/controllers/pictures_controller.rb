class PicturesController < ApplicationController
	before_filter :authenticate_user!, :except => [:show, :index]
	
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
		if params[:imagecategory]
			@pictures =  Picture.where(:imagecategory => params[:imagecategory])
		else
			@pictures = Picture.all
		end
	end
	
	def show
		@picture = Picture.find(params[:id])
	end
end
