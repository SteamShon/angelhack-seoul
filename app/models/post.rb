class Post < ActiveRecord::Base
  attr_accessible :body, :emotion_id, :theme_id, :title, :user_id
  belongs_to :theme
  belongs_to :user
  has_one :emotion
  has_many :comments
  has_one :image
  
end
