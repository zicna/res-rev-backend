class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    def rating
        if self.reviews.length > 0
            self.reviews.average(:mark).round(1)
        else
            0
        end
    end

    def review_count
        self.reviews.count
    end
end
