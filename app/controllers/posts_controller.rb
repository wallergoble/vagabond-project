

class PostsController < ApplicationController
    def index
        @posts = Post.all
        @posts.order("created_at DESC")

    end

    def show
        @post = Post.find params[:id]
    end

    def new
        @city = City.find params[:city_id]

    end

    def create
        @city = City.find params[:city_id]
        @post = @city.posts.create(post_params)
        if @post.save 
            redirect_to city_path(@city)
        else
            redirect_to new_city_post_path(:city_id)
        end
    end

    def edit
        @post = Post.find params[:id]
    end

    def update
        @post = Post.find params[:id]

        if @post.update(post_params)
            redirect_to city_path @post.city_id
        else
            render 'edit'
        end
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)
            redirect_to city_path(@post.city_id)
        else
            render 'edit'
        end
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
