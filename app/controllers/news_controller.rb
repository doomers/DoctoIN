class NewsController < ApplicationController
	def new
    end

    def create
       @nes = News.create(news_params)
   
       if @nes.save
       redirect_to news_path
     end
    end

    def show
       @nes = News.find(params[:id])
    end

    private
    def news_params
         params.require(:news).permit(:title, :text)
    end


end
