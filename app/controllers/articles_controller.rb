class ArticlesController < ApplicationController
	
	# GET / articles
	def index
		#Devuelve todos los registros
		@article = Article.all
	end
	#GET /articles/:id
	def show
		#Devuelve un registro por su id
		@article = Article.find(params[:id])
	end

	#GET /articles/new
	def new
		#Crea un nuevo registro
		@article = Article.new
	end

	#POST /articles
	def create
		@article = Article.new(titulo: params[:article][:titulo], cuerpo: params[:article][:cuerpo])
		if @article.save
			redirect_to @article
		else
			render :new
		end
	end

	#delete /articles/:id
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path

	end

	#PUT /articles/:id
	def update
		
	end
end
