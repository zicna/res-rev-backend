class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    def rating
        self.reviews.average(:mark).round(1)
    end

    def review_count
        self.reviews.count
    end
end
