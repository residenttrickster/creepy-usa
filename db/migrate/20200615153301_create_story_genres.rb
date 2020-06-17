class CreateStoryGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :story_genres do |t|
      t.belongs_to :story, null: false, foreign_key: true
      t.belongs_to :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
