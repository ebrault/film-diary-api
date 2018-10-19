class Year < ApplicationRecord
  belongs_to :user
  has_many :films
end
