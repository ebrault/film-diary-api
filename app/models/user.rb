# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :films
  has_many :directors
  has_many :years
  has_many :ratings
end
