class FriendListsController < ApplicationController
    def index
        @all_friends = FriendList.where(user_id: current_user.id)
        @friends = Array.new

        @all_friends.to_a.each do |friend|
            @friends << User.find(friend.friend_id)
        
        end
        
        @all_friends = FriendList.where(friend_id: current_user.id)

        @all_friends.to_a.each do |friend|
            @friends << User.find(friend.user_id)
        end

     
    end

    def create
            @new_friend = FriendList.new(user_id: current_user.id, friend_id: params[:sender_id])
            if(FriendList.where(user_id: current_user.id, friend_id: params[:sender_id]).or(FriendList.where(friend_id: current_user.id, user_id: params[:sender_id])).exists?)
                @invitation = Invitation.where(sender_id: params[:sender_id],receiver_id: current_user.id).to_a[0]
                Invitation.destroy(@invitation.id)
                flash.now[:notice] = "Already Friends"
            else
                if(@new_friend.save)
                    @invitation = Invitation.where(sender_id: params[:sender_id],receiver_id: current_user.id).to_a[0]
                    Invitation.destroy(@invitation.id)
                    redirect_to  friend_lists_path
                    
                else
                    render friend_lists_path
                end
            end
           
    end



   

    




end
