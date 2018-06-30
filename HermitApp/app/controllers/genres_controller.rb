class GenresController < ApplicationController
    before_action :set_user, only: [:show, :update]

    def index
        @genres = Genre.all
        json_response(@genres)
    end

    def create 
        @genres = Genre.create!(genre_params)
        json_response(@genres, :created)
    end

    def show 
        json_response(@genres)
    end

    def update
        @user = current_user
        @genres = Genre.find(params[:id])
        @status = Status.create(user_id: @user.id, genre_id:@genres.id)
        json_response(@genres)
    end

    private
    def genre_params
        params.permit(:name, :description)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
