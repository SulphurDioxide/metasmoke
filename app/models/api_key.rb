# frozen_string_literal: true

class ApiKey < ApplicationRecord
  validates :key, length: { minimum: 10, maximum: 100 }
  validates :key, uniqueness: true

  validates :app_name, length: { minimum: 1 }, uniqueness: true

  has_many :feedbacks
  has_many :api_tokens
  has_many :deletion_logs

  # ApiKey.user is the *owner* of the API application that the key belongs to.
  belongs_to :user
end
