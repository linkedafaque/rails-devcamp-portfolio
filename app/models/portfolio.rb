class Portfolio < ApplicationRecord

  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attr| attr['name'].blank? }

  # Placed in Concern Folder
  include Placeholder
  validates_presence_of :title, :subtitle, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  def self.ruby
    where(subtitle: 'Ruby on Rails')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(400)
    self.thumb_image ||= Placeholder.image_generator(150)
  end
end
