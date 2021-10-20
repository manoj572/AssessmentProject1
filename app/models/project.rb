class Project < ApplicationRecord
    validate :username, :password, presence: true
    validate :email, presence: true,uniqueness: true, format:{ with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email'}
end
