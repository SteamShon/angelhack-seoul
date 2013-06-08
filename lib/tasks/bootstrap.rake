namespace :bootstrap do
  desc "add emotions"
  task :default_emotions => :environment do
    Emotion.create( :id => 1, "emotion_type" => "happy")
    Emotion.create( :id => 2, "emotion_type" => "love")
    Emotion.create( :id => 3, "emotion_type" => "angry")
    Emotion.create( :id => 4, "emotion_type" => "sad")
  end
end
