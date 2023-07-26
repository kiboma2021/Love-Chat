class Single < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_one_attached :photo
    validates :name, presence: true, uniqueness: true
    validates :bio, presence: true, length: { minimum: 10 }
    validates_presence_of :age, :photo
end
