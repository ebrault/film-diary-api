class Director < ApplicationRecord
  has_many :films
  belongs_to :user
end
