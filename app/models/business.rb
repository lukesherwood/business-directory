class Business < ApplicationRecord
    validates :name, presence: true
    validates :website, presence: true
    validates :state, presence: true
    validates :founded_date, presence: true

    def slug
        self.name.downcase.strip.gsub(' ', '-')
    end

    def self.find_by_slug(slug)
        self.all.find{|object| object.slug == slug}
    end
end
