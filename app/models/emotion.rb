class Emotion < ActiveRecord::Base
  attr_accessible :emotion_type
  has_one :post
end
