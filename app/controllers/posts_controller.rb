class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find params[:id]
    end

    def create
        @city = City.find params[:city_id]
        @post = @city.cities.create(post_params)

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
        params.require(:post).permit :body, :author, :title
    end

end
