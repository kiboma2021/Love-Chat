class Comment < ApplicationRecord
    belongs_to :single
    validates :body, presence: true
end
