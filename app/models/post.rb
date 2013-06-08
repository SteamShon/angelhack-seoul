class Post < ActiveRecord::Base
  attr_accessible :body, :emotion_id, :theme_id, :title, :user_id
  belongs_to :theme
  belongs_to :user
  has_one :emotion
  has_many :comments
  has_many :images
  accepts_nested_attributes_for :images 
  
  attr_accessible :photo
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
