class FilmSerializer < ActiveModel::Serializer
  attributes :id, :title, :director, :director_id, :year, :rating
end
