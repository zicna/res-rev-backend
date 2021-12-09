class Restaurant < ApplicationRecord
    has_many :reviews

    def rating
        self.reviews.average(:mark)
    end

    def count_reviews
        self.reviews.count
    end
end
