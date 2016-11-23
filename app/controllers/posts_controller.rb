class PostsController < ApplicationController
	def index
    @posts = Post.all
    end
	def new
	end
	def create
		@post = Post.create(article_params)
		@post.doctor = current_user 

		if @post.save
    flash[:success] = "Your Post has been successfully Created"
      	redirect_to posts_path
      end
	end

	def show
		@post = Post.find(params[:id])
		
	end

	private
	def article_params
		params.require(:post).permit(:topic, :Description, :avatar)
	end
end
