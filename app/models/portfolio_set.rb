class PortfolioSet < ApplicationRecord


  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title,  :body, :main_image, :thumb_image

  
	def self.vuejs
  	where(subtitle: "Vuejs")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }
end
