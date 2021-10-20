class Article < ApplicationRecord
    validates :title, presence: true, length: {minimun: 3,maximun: 100}
    validates :description, presence: true, length: {minimun: 5,maximun: 300}
end
