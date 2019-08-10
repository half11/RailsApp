class Portfolio < ApplicationRecord
    include Placeholder
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.angular
        where(subtitle: 'Angular')
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Angular') }

    after_initialize :set_defaults

    def set_defaults
        # ||= significa if self.main_image == nil  self.main_image = "https://via.placeholder.com/600x400C/O%20https://placeholder.com/"
        self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
        self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    end
end