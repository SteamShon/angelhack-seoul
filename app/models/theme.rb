class Theme < ActiveRecord::Base
  attr_accessible :title, :user_id
  has_many :posts
  belongs_to :user
end
