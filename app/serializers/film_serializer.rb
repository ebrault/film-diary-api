class FilmSerializer < ActiveModel::Serializer
  attributes :id, :title, :director, :director_id, :year, :year_id, :rating, :rating_id
end
