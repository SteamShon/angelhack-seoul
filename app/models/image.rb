class Image < ActiveRecord::Base
  attr_accessible :path, :post_id, :title
  belongs_to :post
end
