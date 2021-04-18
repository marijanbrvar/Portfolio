class PortfolioSet < ApplicationRecord


  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title,  :body, :main_image, :thumb_image

  
	def self.vuejs
  	where(subtitle: "Vuejs")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

  after_initialize  :set_defaults

  def set_defaults
  	self.main_image ||= "https://picsum.photos/600/400"
  	self.thumb_image ||= "https://picsum.photos/350/150"  
  end
end
