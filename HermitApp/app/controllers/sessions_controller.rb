class SessionsController < ApplicationController
    def create
        @user = User.find_by_email(params:[:email]).try(:authenticate, params[:password])
        if @user
            session[:user_id] = @user.id
            render json: user.as_json(only: [:id, :email, :authentication_token]), status: :created
        else
            head(:unauthorize)
        end
    end

    def delete
        session[user_id] = nil
    end
end
