class User < ApplicationRecord
  include Gravtastic
  gravtastic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :incomingInvitations, class_name: "Invitation", foreign_key: "receiver_id"
    has_many :outgoingInvitations, class_name: "Invitation", foreign_key: "sender_id"
    has_many :friend_lists
    has_many :posts
    has_many :likes
    has_many :comments
    
    
   


end
