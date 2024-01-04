class User < ApplicationRecord
    has_secure_password
    validate :phone_number, presence: true, unique: true
end
