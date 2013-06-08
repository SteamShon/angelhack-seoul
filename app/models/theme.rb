class Theme < ActiveRecord::Base
  attr_accessible :title, :user_id
  has_many :posts
  belongs_to :user

  def get_photo_url
    temp = posts.where('photo_file_name IS NOT NULL')
    if temp.size != 0 
      return temp[0].photo.url(:thumb)
    else
      return ''
    end
  end
end
