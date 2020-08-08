class Author < ApplicationRecord
    #before_filter 
    validates :name , presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false,}
    validates :bio , presence: true, length: {maximum: 255}

end
