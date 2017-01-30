class City < ApplicationRecord
    has_many :posts, dependent: :destroy

    def self.search(search)
        where("city LIKE ?", "%#{search}%") 
    end

end
