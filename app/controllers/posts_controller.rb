class PostsController < ApplicationController
    def create
        @post = Post.new(text: params[:post][:text],user_id: current_user.id)
        if(@post.save)
            redirect_to root_path, notice:"post created"
        else
            render "home/index"
        end
    end

    
    

   private
    def post_params
        params.require(:post).permit(:text)

    end

end
