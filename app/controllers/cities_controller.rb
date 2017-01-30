class CitiesController < ApplicationController
    
    def index
        if params[:search]
            @cities = City.search(params[:search]).order("created_at DESC")
        else
            @cities = City.all.order("created_at DESC")
        end
    end

    def show
        @city = City.find(params[:id])
    end
end
