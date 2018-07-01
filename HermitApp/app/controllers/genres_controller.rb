class GenresController < ApplicationController
    # before_action :require_user, only: [:show, :update]

    def index
        @genres = Genre.all
        render json: @genres, status: :ok
    end

    def create 
        @genres = Genre.create(genre_params)
        @genres.save
        render json: @genres, status: :created
    end

    def clicked
        @user = current_user
        @genres = Genre.find(params[:id])
        @status = Status.create(user_id: @user.id, genre_id:@genres.id)
        json_response(@genres)
    end

    private
    def genre_params
        params.permit(:name, :description)
    end

    # def require_user
    #     @user = User.find(params[:id])
    # end
end
