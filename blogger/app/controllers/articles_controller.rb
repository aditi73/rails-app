class ArticlesController < ApplicationController
	include ArticlesHelper
	before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]
	def index #Defines an action to display the index page
		@articles = Article.all 
	end

	def show #Defines an action for displaying each article
		@article = Article.find(params[:id]) 
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new #Defines an action to display the create new article form
		@article = Article.new 
	end	
	def create #Defines an action for processing form's data                                
		@article = Article.new(article_params)    
		@article.save						

		flash.notice = "Article '#{@article.title}' Created!"

		redirect_to article_path(@article) 
	end

	def destroy #Defines an action for deleting the article
		@article = Article.find(params[:id]) 
		@article.destroy 

		flash.notice = "Article '#{@article.title}' Deleted!"

		redirect_to articles_path 
	end

	def edit #Defines an action for editing the article
		@article = Article.find(params[:id])
	end	
	def update #Defines an action for updating the article
		@article = Article.find(params[:id])
		@article.update(article_params)

		flash.notice = "Article '#{@article.title}' Updated!"

		redirect_to article_path(@article)
	end	
end

