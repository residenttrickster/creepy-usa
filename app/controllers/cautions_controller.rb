class CautionsController < ApplicationController

    def index
        @cautions = Caution.all  
        render :index 
    end 

    def show
        @caution = Caution.find(params[:id])
        render :show

    def new
        @caution = Caution.new 
        render :new 
    end 

    def create
        caution_params = params.permit(:caution).require(:name)
        @caution = Caution.create(caution_params)
        redirect_to caution_path(@caution)

end
