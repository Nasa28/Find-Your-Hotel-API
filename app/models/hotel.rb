# frozen_string_literal: true

class Hotel < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4 }
  validates :address, presence: true, length: { minimum: 8 }
  validates :description, presence: true, length: { minimum: 12 }
  validates :price, presence: true, format: { with: /\A\d+\z/, message: 'Integer only. No sign allowed.' }
  validates :image_url, presence: true
end
