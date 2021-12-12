class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    def rating
        self.reviews.average(:mark)
    end

    def review_count
        self.reviews.count
    end
end
