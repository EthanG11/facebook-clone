class InvitationsController < ApplicationController
    def index
        @test = current_user.id
        @invitations  = Invitation.where(receiver_id: current_user.id)    
    end

    def create 
        @invitation = Invitation.new(sender_id: current_user.id, receiver_id: params[:user_id])

        if(@invitation.save)
            redirect_to root_path, notice: "Friend Request Sent"
        else
            render :new
        end
    end

    def accept
        @friend_ship = FriendList.new(user_id)
    end

    def destroy
        @invitation = Invitation.find(params[:id]).destroy
        flash.now[:notice] = "Friend Request Declined"
        redirect_to invitations_path
    end
end
