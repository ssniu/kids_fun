class Introduction < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  
end
