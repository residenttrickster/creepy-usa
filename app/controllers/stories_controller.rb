class StoriesController < ApplicationController

    def index
        @stories = Story.all  
        render :index 
    end

    def show
        @story = story_find
        render :show
    end 

    def new
        @story = Story.new
        render :new 
    end 

    def create
        @story = Story.create(story_params)
        render_to story_path(@story)
    end

    private

    def story_find
        Story.find(params[:id])
    end 

    def story_params
        params.require(:story).permit(:title, :body)
    end 

end
