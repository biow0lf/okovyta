class User < ApplicationRecord
  has_many :sessions, dependent: :destroy

  validates :email, presence: true

  validates :first_name, presence: true

  validates :last_name, presence: true

  has_secure_password
end
