class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  #resize image if too large
  def display_image
    image.variant(resize_to_limit: [400,400])
end
end
