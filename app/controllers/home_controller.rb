class HomeController < ApplicationController

    before_action :authenticate_user!


    def index
        if(!user_signed_in?)
            redirect_to new_user_registration_path
        end
        @post = Post.new
        @search = Search.new
        @comment = Comment.new
        @show_posts = find_posts(current_user)

    end
    
    
    def show_user
        @user = User.find(params[:id])
        @user_posts = Post.where(user_id: params[:id]).to_a
    end

    private 
    def find_friends(current_user)
    
        @all_friends = FriendList.where(user_id: current_user.id)
        @friends = Array.new
        @all_friends.to_a.each do |friend|
            @friends << User.find(friend.friend_id)
        
        end

        @all_friends = FriendList.where(friend_id: current_user.id)
        @all_friends.to_a.each do |friend|
            @friends << User.find(friend.user_id)
        end
    
        @friends
    end

    def find_posts(current_user)
        @viewable_posts = Array.new
        @posts =  Array.new
 
        
        find_friends(current_user).to_a.each do |friend|
             @posts = Post.where(user_id: friend.id)
             @posts.to_a.each do |post|
 
             @viewable_posts << post
             end
         end  

         current_user.posts.to_a.each do |post|
          @viewable_posts <<post
         end
         @viewable_posts
    end
  
      

end
