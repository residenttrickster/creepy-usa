class GenresController < ApplicationController

    def index
        @genres = Genre.all  
        render :index 
    end 

    def show
        @genre = Genre.find(params[:id])
        render :show
    end

    def new
        @genre = Genre.new 
        render :new 
    end 

    def create
        genre_params = params.require(:genre).permit(:name)
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre)
    end 

end
