class User < ApplicationRecord
  has_secure_password
  has_many :favourites, dependent: :destroy
  has_many :favourite_hotels, through: :favourites, source: :hotel

  validates :username, presence: true, length: { minimum: 4, maximum: 20 }, # format: { with: VALID_EMAIL_REGEX },
                       uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 4 }, allow_nil: true

end
