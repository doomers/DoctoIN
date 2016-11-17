class ArticlesController < ApplicationController
 def new 
 end

 def create
		@article = Article.create(article_params)
	end

	def show
	end

	private
	def article_params
		params.require(:article).permit(:Topic,:Description)
	end


end
