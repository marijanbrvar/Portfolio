class PortfolioSet < ApplicationRecord
  include Placeholder

  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attrs) { attrs['name'].blank? }

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.vuejs
    where(subtitle: 'Vuejs')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '400', width: '600')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '150')
  end
end
