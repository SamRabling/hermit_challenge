class SessionsController < ApplicationController
    before_action :set_sessions, only: [:create, :destroy]
end
