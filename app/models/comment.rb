class Comment < ApplicationRecord
    validates :title, length: {minimum: 5, maxium: 20}
    validates :content, length: {maximum: 140}
end
