class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.angular
        where(subtitle: 'Angular')
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Angular') }

    after_initialize :set_defaults

    def set_defaults
        # ||= significa if self.main_image == nil  self.main_image = "https://via.placeholder.com/600x400C/O%20https://placeholder.com/"
        self.main_image ||= "https://via.placeholder.com/600x400C/O%20https://placeholder.com/"
        self.thumb_image ||= "https://via.placeholder.com/350x200C/O%20https://placeholder.com/"
    end
end