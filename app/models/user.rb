class User < ApplicationRecord
  has_secure_password
  has_many :favorites, dependent: :destroy
  has_many :favorite_hotels, through: :favorites, source: :hotel

  validates :username, presence: true, length: { minimum: 4, maximum: 20 }, # format: { with: VALID_EMAIL_REGEX },
                       uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }, allow_nil: true

end
