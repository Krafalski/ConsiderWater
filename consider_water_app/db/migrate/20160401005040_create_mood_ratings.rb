class CreateMoodRatings < ActiveRecord::Migration
  def change
    create_table :mood_ratings do |t|
      t.float :rating
      t.timestamps null:false
      t.belongs_to(:user, foreign_key: true)
    end
  end
end
