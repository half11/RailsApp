class Blog < ApplicationRecord
    enum status: { draft: 0, published: 1 }
    extend FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of :title, :body

    belongs_to :topic #automatically validates presence of topic

    has_many :comments, dependent: :destroy

    def self.special_blogs
        all
    end

    def self.featured_blogs
        limit(2)
    end

    def self.recent
        order("updated_at DESC")
    end
end
