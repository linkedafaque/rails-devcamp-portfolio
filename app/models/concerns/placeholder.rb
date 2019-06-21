module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(side)
    "https://via.placeholder.com/#{side}"
  end
end
