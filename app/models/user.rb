class User < ApplicationRecord
    has_many :articles
    validates :title, presence: true,
                      uniqueness: { case_sensitive: false},
                      length: {minimun:3,maximun:100}
    validates :description, presence: true, 
                            uniqueness: { case_sensitive: false},
                            length: {minimun:5,maximun:300}
end
