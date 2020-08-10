class Author < ApplicationRecord
    has_many :books
    has_one_attached :image

    validates :name , presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false}
    validates :bio , presence: true, length: {maximum: 255}
    validates :image, content_type:{in: %w[image/jpeg image/gif image/png], message: "must be a valid image format"},
                        size: {less_than: 5.megabytes, message: "should be less than 5MB"} 

    
end
