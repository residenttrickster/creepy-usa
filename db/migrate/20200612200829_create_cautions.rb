class CreateCautions < ActiveRecord::Migration[6.0]
  def change
    create_table :cautions do |t|
      t.string :name
      t.belongs_to :story, null: false, foreign_key: true

      t.timestamps
    end
  end
end
