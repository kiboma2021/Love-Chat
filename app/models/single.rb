class Single < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :name, presence: true, uniqueness: true
    validates :bio, presence: true, length: { minimum: 10 }
    validates :age, presence: true
end
