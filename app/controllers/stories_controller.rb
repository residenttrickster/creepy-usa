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
        @story_genre = StoryGenre.create(story_id: @story.id, genre_id: params[:story][:cautions])
        # @story_genre = @story.story_genres
        # @story_genre.create(story_id: @story.id, genre_id: params[:story][:genres])
        # @story_caution = StoryCaution.create(story_id: @story.id, caution_id: params[:story][:cautions])
        
        redirect_to user_path(@story.user_id)
        # byebug
    end

    def edit
        @story = story_find
        render :edit 
    end 

    def update
        @story = story_find
        @story.update(story_params)
        redirect_to story_path(@story)
    end 

    def destroy
        @story = story_find
        @story.destroy
        redirect_to user_path(@story.user_id)
    end 

    private

    def story_find
        Story.find(params[:id])
    end 

    def story_params
        params.require(:story).permit(:title, :body, :location_id, :user_id)
    end 

end
