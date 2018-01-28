class ArticlesController < ApplicationController
	
	# GET / articles
	def index
		@article = Article.all
	end
	#GET /articles/:id
	def show
		@article = Article.find(params[:id])
	end

	#GET /articles/new
	def new
		@article = Article.new
	end

	#POST /articles
	def create
		@article = Article.new(titulo: params[:article][:titulo], cuerpo: params[:article][:cuerpo])
		@article.save
		redirect_to @article
	end

	
	def update
	end
end
