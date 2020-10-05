module RailsAdminFeaturedContent
  class FeaturedContentImage < ActiveRecord::Base
    mount_uploader :image, FeaturedContentImageUploader
    
    validates :image, presence: true

    belongs_to :featured_content, inverse_of: :featured_content_images
    
    self.table_name = 'featured_content_images'
  end
end