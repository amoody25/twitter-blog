class Tweet < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :title, presnence: true, length { minimum: 5 }
    validates :text, presnence: true, length { minimum: 10 }
end