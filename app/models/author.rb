class Author < ApplicationRecord
    has_one_attached :image

    validates :name , presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false,}
    validates :bio , presence: true, length: {maximum: 255}
    validates :image, content_type:{in: %w[image/jpeg image/gif image/png], message: "must be a valid image format"},
                        size: {less_than: 5.megabytes, message: "should be less than 5MB"} 

    #resize image if too large
    def display_image
        image.variant(resize_to_limit: [500,500])
    end
end
