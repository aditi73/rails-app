class TagsController < ApplicationController
	before_filter :require_login, only: [:destroy]
	def index
		@tags = Tag.all
	end	
	
	def show
		@tag = Tag.find(params[:id])
	end

	def destroy #Defines an action for deleting the tag
		@tag = Tag.find(params[:id]) 
		@tag.destroy 

		flash.notice = "Tag '#{@tag.name}' Deleted!"

		redirect_to tags_path 
	end
end
