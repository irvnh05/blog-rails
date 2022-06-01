class PostsController < ApplicationController

    def index
        @posts = Post.all.order('created_ate DESC')
    end

    def show
        @post = Post.find(params[:id])
        @posts = Post.order("created_at desc").limit(4).offset(1)
    end

    private
    def post_params
        params.required(:post).permit(:title, :body)
    end
    
end
