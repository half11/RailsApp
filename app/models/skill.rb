class Skill < ApplicationRecord
    include Placeholder
    validates_presence_of :title, :percent_utilized

    def set_defaults
        # ||= significa if self.main_image == nil  self.main_image = "https://via.placeholder.com/600x400C/O%20https://placeholder.com/"
        self.badge ||= Placeholder.image_generator(height: '250', width: '250')
    end
end
