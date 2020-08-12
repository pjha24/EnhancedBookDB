class Book < ApplicationRecord
  has_one :relationship
  belongs_to :author
  has_one_attached :image
  validates :name , presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false, scope: :author_id}
  validates :genre , presence: true, length: {maximum: 50}
  validates :author_id, presence: true
  validates :image, content_type:{in: %w[image/jpeg image/gif image/png], message: "must be a valid image format"},
                        size: {less_than: 5.megabytes, message: "should be less than 5MB"} 
  def display_image
      image.variant(resize_to_limit: [300,300])
  end
end
