class CitiesController < ApplicationController
    def index
                    # This allows us to use the search bar
                    # by changing what @cities is based on 
                    # the params of the seach box
        @cities =   if params[:term]
                        City.where('name LIKE ?', "%#{params[:term]}%")
                    else
                        City.all
                    end
    end

    def show
        @city = City.find(params[:id])
    end

    private
    def city_params
        params.require(:city).permit(:city, :region, :term, :image_url, :description)
    end
end
