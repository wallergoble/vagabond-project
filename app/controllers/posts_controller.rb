

class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find params[:city_id]
    end

    def new
        @city = City.find params[:city_id]
        @post = Post.new
    end

    def create
        @city = City.find params[:city_id]
        @post = @city.posts.create(post_params)

        @post.save
        redirect_to city_path(@city)
    end

    def destroy
        @city = City.find params[:city_id]
        @post = @city.posts.find params[:id]

        @post.destroy
        redirect_to city_path(@city)
    end

    private
    def post_params
        params.require(:post).permit(:author, :title, :body)
    end

end
