class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }

  # Friendly ID Addition
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
  belongs_to :topic
end
