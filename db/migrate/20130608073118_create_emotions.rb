class CreateEmotions < ActiveRecord::Migration
  def change
    create_table :emotions do |t|
      t.string :emotion_type

      t.timestamps
    end
    
    Emotion.create :emotion_type => 'Happy'
    Emotion.create :emotion_type => 'Angry'
    Emotion.create :emotion_type => 'Sad'
    Emotion.create :emotion_type => 'Love'
    
  end
end
