class Single < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :bio, presence: true, length: { minimum: 10 }
    validates :age, presence: true
end
