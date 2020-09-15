class User < ApplicationRecord
    has_secure_password

    validates :name, presence: true
    validates :account_id, presence: true, uniqueness: true

    has_many :tasks, dependent: :destroy
end
