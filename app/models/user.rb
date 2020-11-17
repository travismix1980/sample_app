# frozen_string_literal: true

# User model
class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
end
