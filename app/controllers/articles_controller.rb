class ArticlesController < ApplicationController
 def new 
 end

 def index
  @articles = Article.all
 end

 def create
		@article = Article.create(article_params)

		if @article.save
		    redirect_to articles_path 
        end
 end

	def show
		@article = Article.find(params[:id])
	end

	private
	def article_params
		params.require(:article).permit(:Topic,:Description)
	end


end
