class Skill < ApplicationRecord
  # Placed in Concern Folder
  include Placeholder
  validates_presence_of :title, :percent_utlitized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(250)
  end
end
