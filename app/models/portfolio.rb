class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  def self.ruby
    where(subtitle: 'Ruby on Rails')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
