class Rant < ApplicationRecord
    after_initialize :init
    validates :title, presence: true, length: {minimum: 5}
    validates :body, presence: true

    def init
        self.author = "Anonymous" if self.author.empty?
    end
end
