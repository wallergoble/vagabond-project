class CitiesController < ApplicationController
    def index
        @cities = City.all.order("created_at DESC")
    end

    def show
        @city = City.find(params[:id])
    end
end
