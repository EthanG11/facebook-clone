class SearchesController < ApplicationController
    def index

        
    end

    def create

        @search = params[:search]
        if(!(User.where(name: @search.downcase).or(User.where(name: @search)).nil?))
            redirect_to searches_path,flash:{users: User.where(name: @search.downcase).or(User.where(name: @search)).to_a}
            
        else
            
            redirect_to :root_path, notice:"User not found!"
        end

end
