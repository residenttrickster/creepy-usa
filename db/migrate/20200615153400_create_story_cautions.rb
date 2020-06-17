class CreateStoryCautions < ActiveRecord::Migration[6.0]
  def change
    create_table :story_cautions do |t|
      t.belongs_to :story, null: false, foreign_key: true
      t.belongs_to :caution, null: false, foreign_key: true

      t.timestamps
    end
  end
end
