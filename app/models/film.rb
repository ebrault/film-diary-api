class Film < ApplicationRecord
  belongs_to :user
  belongs_to :director
  belongs_to :year
  belongs_to :rating
end
